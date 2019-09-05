#!/bin/sh

AUTHOR1="Rodrigo Vitor Ribeiro"
AUTHOR2="Lucas de Assis Dias"
AUTHOR3="Vinicius Vicentini"
AUTHOR4="Victor Vasconcellos"
AUTHOR5="Marcello Nardi"
PROJECT="Lab. Eng. Software - Judocas web version"
TARGET=./target
TMP=$TARGET/tmp
APP=Projeto-Lab-ES
SRC_APP=$TMP/$APP
JBOSS_HOME=$TARGET/EAP-7.2.0
SERVER_DIR=$JBOSS_HOME/standalone/deployments
SERVER_CONF=$JBOSS_HOME/standalone/configuration
SERVER_BIN=$JBOSS_HOME/bin
SRC_DIR=./installs
SUPPORT_DIR=./support
EAP=jboss-eap-7.2.0-installer.jar
VERSION=7.2
PROJECT_GIT_REPO=https://github.com/victorborba7/Projeto-Lab-ES

# clear screen.
clear

# Presente this script
echo 
echo "################################################################################"
echo "##                                                                            ##"
echo "## Configurando a aplicação:                                                  ##"
echo "##                                                                            ##"
echo "##            ##### #    # ####    ###   ###    ###    ###                    ##"
echo "##              #   #    # #   #  #   # #   #  #   #  #                       ##"
echo "##              #   #    # #   #  #   # #      #####   ###                    ##"
echo "##            # #    #  #  #   #  #   # #   #  #   #      #                   ##"
echo "##             #      ##   ####    ###   ###   #   #   ###                    ##"
echo "##                                                                            ##"
echo "## Projeto criado por                                                         ##"
echo "##    ${AUTHOR1}                                                   ##"
echo "##    ${AUTHOR2}                                                     ##"
echo "##    ${AUTHOR3}                                                      ##"
echo "##    ${AUTHOR4}                                                     ##"
echo "##    ${AUTHOR5}                                                          ##"
echo "##                                                                            ##"
echo "################################################################################"
echo
sleep 1

# Verify if the JBoss EAP installer is present
if [ -r $SRC_DIR/$EAP ] || [ -L $SRC_DIR/$EAP ]; then
	echo "Product sources are present..."
else
	echo "Need to download $EAP installer from http://developer.redhat.com"
	echo "and place it in the $SRC_DIR directory to proceed..."
fi
echo

# Check if exist an old version of the application
if [ -x $TARGET ]; then
	echo " Removing folders from old version."
	echo
	rm -rf $TARGET
fi

# Install JBoss EAP
echo "Installing the JBoss EAP..."
echo 
java -jar $SRC_DIR/$EAP ./support/auto.xml
echo 

if [ $? -ne 0 ]; then
	echo "Error occured during JBoss EAP installation!"
	echo
fi

echo " - Setting up the project..."
echo

echo " Cloning the project's Git repo from: $PROJECT_GIT_REPO"
echo

git clone $PROJECT_GIT_REPO.git $TMP
echo 

echo " - Deploying the application..."
echo

echo " Test the application"
echo 

cd $SRC_APP
mvn clean test

if [ $? -ne 0 ]; then
        echo "Error occured during application tests!"
        echo
fi

echo " Build the apllication"
echo

mvn clean install -DskipTests

if [ $? -ne 0 ]; then
        echo "Error occured during application build"
        echo
fi

echo " Deploy the applicatuon"
echo 
cd ../../../
cp $SRC_APP/target/judocas.war $SERVER_DIR

echo " - Clean up..."
echo 

rm -rf $TMP

echo "Now you can start the application with $SERVER_BIN/standalone.sh"
echo
echo "Look at http://localhost:8080/judocas"
echo 
echo "JBoss user:	eapAdmin"
echo "      password:	judocas#1"
echo

echo "Setup complete."
echo
