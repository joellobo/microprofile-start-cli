#!/bin/bash

NAME="Microprofile Start CLI"
VERSION="1.0.0"

PROTOCOL="https://"
URL_BASE="start.microprofile.io/"
CONTEXT="api/"
API_VERSION="1/"
RESOURCE_VERSION="mpVersion"
RESOURCE_PROJECT="project"
SERVER="supportedServer"

NAME_ZIP_PARAM=""
SERVER_PARAM="LIBERTY"
SPEC_PARAM=""
GROUP_ID_PARAM=""
ARTIFACT_ID_PARAM=""

URL=""

if [ "$1" == 'init' ]; then
    URL="${PROTOCOL}${URL_BASE}${CONTEXT}${API_VERSION}${RESOURCE_PROJECT}?${SERVER}=${SERVER_PARAM}"
    echo ${URL}
    curl -O -J ${URL}
fi

if [ "$1" == "help" ]; then
    echo "---------------------------------------------------------------------------------------"
    echo " "
    echo "Microprofile Start CLI - HELP "
    echo " "
    echo "$NAME v$VERSION"
    echo " "
    echo "::: OPTIONS ::: "
    echo " "
    echo "init "
    echo "./microprofile-start-cli.sh init --name=demo.zip --groupId=org.example --artifactId=myapp --server=LIBERTY --spec=CONFIG,FAULT_TOLERANCE,JWT_AUTH,METRICS,HEALTH_CHECKS,OPEN_API,OPEN_TRACING,REST_CLIENT "
    echo " "
    echo "--name=<NAME>"
    echo "Default: demo.zip"
    echo " "
    echo "--groupId=<GROUP_ID>"
    echo "Ex: org.example"
    echo "Default: org.example"
    echo " "
    echo "--artifactId=<ARTIFACT_ID>"
    echo "Ex: myapp"
    echo "Default: myapp"
    echo " "
    echo "--server=<SERVER>"
    echo "KUMULUZEE,LIBERTY,PAYARA_MICRO,TOMEE"
    echo "Default: LIBERTY"
    echo " "
    echo "--spec=<SPEC>"
    echo "CONFIG,FAULT_TOLERANCE,JWT_AUTH,METRICS,HEALTH_CHECKS,OPEN_API,OPEN_TRACING,REST_CLIENT"
    echo "Default: CONFIG,FAULT_TOLERANCE,JWT_AUTH,METRICS,HEALTH_CHECKS,OPEN_API,OPEN_TRACING,REST_CLIENT"
    echo " "
    echo " version "
    echo " "
    echo " help "
    echo " "
    echo "---------------------------------------------------------------------------------------"
fi

if [ "$1" == "version" ]; then
    echo "$NAME v$VERSION" 
fi
