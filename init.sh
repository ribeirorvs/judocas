#!/bin/sh

AHTHORS="Rodrigo Vitor Ribeiro
Lucas de Assis Dias
Vinicius Vicentini
Victor Vasconcellos
Marcello Nardi"
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
