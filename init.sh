#!/bin/sh

AUTHOR1="Rodrigo Vitor Ribeiro"
AUTHOR2="Lucas de Assis Dias"
AUTHOR3="Vinicius Vicentini"
AUTHOR4="Victor Vasconcellos"
AUTHOR5="Marcello Nardi"
PROJECT="Lab. Eng. Software - Judocas web version"
TARGET=./target
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

echo 
echo "################################################################################"
echo "## Projeto criado por                                                         ##"
echo "##    ${AUTHOR1}                                                   ##"
echo "##    ${AUTHOR2}                                                     ##"
echo "##    ${AUTHOR3}                                                      ##"
echo "##    ${AUTHOR4}                                                     ##"
echo "##    ${AUTHOR5}                                                          ##"
