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
sleep 1

# Create a suspense
echo "."
sleep 0.5
echo "."
sleep 0.5
echo "."
sleep 0.5
echo "."
sleep 1 


# Clear the project
echo
echo "################################################################################"
echo "##                                                                            ##"
echo "##  Removing folders from old version.                                        ##"
echo "##                                                                            ##"
echo "################################################################################"
rm -rf $TARGET
sleep 1
echo "."
sleep 0.4
echo "."
sleep 0.4
echo "."
sleep 1

# Create needed folders
echo
echo "################################################################################"
echo "##                                                                            ##"
echo "## Creatin folders for new version.                                           ##"
echo "##                                                                            ##"
echo "################################################################################"
mkdir -p $TMP
sleep 1
echo "."
sleep 0.4
echo "."
sleep 0.4
echo "."
sleep 1

# Cloning the project
echo
echo "################################################################################"
echo "##                                                                            ##"
echo "## Cloning the project.                                                       ##"
echo "##                                                                            ##"
echo "################################################################################"
cd $TMP
sleep 1
echo "."
sleep 0.4
echo "."
sleep 0.4
echo "."
sleep 1

echo 
git clone https://github.com/victorborba7/Projeto-Lab-ES.git
sleep 1
echo "."
sleep 0.4
echo "."
sleep 0.4
echo "."
sleep 1

# Install JBoss EAP
echo 
echo "################################################################################"
echo "##                                                                            ##"
echo "## Installing JBoss EAP $VERSION.                                                  ##"
echo "##                                                                            ##"
echo "################################################################################"
sleep 1
echo "."
sleep 0.4
echo "."
sleep 0.4
echo "."
sleep 1
