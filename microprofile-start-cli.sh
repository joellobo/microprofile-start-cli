#!/bin/bash

NAME="Microprofile Start CLI"
VERSION="1.0.0"
PROTOCOL="https://"
URL_BASE="start.microprofile.io/"
CONTEXT="api/"
API_VERSION="1/"
RESOURCE="mpVersion"


if [ "$1" == 'init' ]; then
    echo "init"
fi

if [ "$1" == "help" ]; then
    echo "Microprofile Start CLI - HELP "
fi

if [ "$1" == "version" ]; then
    echo "$NAME v$VERSION" 
fi
