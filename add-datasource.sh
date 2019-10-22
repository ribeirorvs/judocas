#!/bin/sh
SUPPORT_DIR=./support
TARGET=./target
JBOSS_HOME=$TARGET/EAP-7.2.0
SERVER_BIN=$JBOSS_HOME/bin

# clear screen.
clear

echo " - Setting up the datasource..."
echo

echo "Adding the module"
echo
$SERVER_BIN/jboss-cli.sh -c file=$SUPPORT_DIR/add-module.txt

echo "Adding the JDBC driver"
echo
$SERVER_BIN/jboss-cli.sh -c file=$SUPPORT_DIR/add-driver.txt

echo "Adding the datasource"
echo
$SERVER_BIN/jboss-cli.sh -c file=$SUPPORT_DIR/add-datasource.txt

echo "Testing the connection"
echo
$SERVER_BIN/jboss-cli.sh -f file=$SUPPORT_DIR/test-connection.txt

echo "Datasource configured..."
