#!/bin/bash

NAME="Microprofile Start CLI"
VERSION="1.0.0"
PROTOCOL="https://"
URL_BASE="start.microprofile.io/"
CONTEXT="api/"
API_VERSION="1/"
RESOURCE_VERSION="mpVersion"

RESOURCE_PROJECT=""

NAME_ZIP=""
SERVER=""
SPEC=""
GROUP_ID=""
ARTIFACT_ID=""

if [ "$1" == 'init' ]; then
    curl -O -J https://start.microprofile.io/api/1/project?supportedServer=TOMEE
fi

if [ "$1" == "help" ]; then
    echo "---------------------------------------------------------------------------------------"
    echo " "
    echo "Microprofile Start CLI - HELP "
    echo " "
    echo "--groupId=<GROUP_ID>"
    echo "Ex: org.example"
    echo " "
    echo "--artifactId=<ARTIFACT_ID>"
    echo "Ex: myapp"
    echo " "
    echo "--server=<SERVER>"
    echo "KUMULUZEE,LIBERTY,PAYARA_MICRO,TOMEE"
    echo " "
    echo "--spec=<SPEC>"
    echo "CONFIG,FAULT_TOLERANCE,JWT_AUTH,METRICS,HEALTH_CHECKS,OPEN_API,OPEN_TRACING,REST_CLIENT"
    echo ""
    echo "--name=<NAME>"
    echo " "
    echo "---------------------------------------------------------------------------------------"
fi

if [ "$1" == "version" ]; then
    echo "$NAME v$VERSION" 
fi
