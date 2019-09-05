#!/bin/sh

AUTHOR1="Rodrigo Vitor Ribeiro"
AUTHOR2="Lucas de Assis Dias"
AUTHOR3="Vinicius Vicentini"
AUTHOR4="Victor Vasconcellos"
AUTHOR5="Marcello Nardi"
PROJECT="Lab. Eng. Software - Judocas web version"
TARGET=./target
TMP=$TARGET/tmp
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
echo " Removing folders from old version."
rm -rf $TARGET

# Create needed folders
echo
echo " Creatin folders for new version."
mkdir -p $TMP

# Cloning the project
echo
echo " Cloning the project."
cd $TMP

echo 
git clone https://github.com/victorborba7/Projeto-Lab-ES.git
cd ../../

# Install JBoss EAP
echo 
echo " Installing JBoss EAP $VERSION."

java -jar $SRC_DIR/$EAP ./support/auto.xml

