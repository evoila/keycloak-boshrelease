#!/bin/bash

# build package for Keycloak server according to https://keycloak.gitbooks.io/server-developer-guide/content/v/2.3/topics/themes.html#_deploying_themes

ARCH_NAME="themes.jar"

echo "Building package to `pwd`/$ARCH_NAME..."

echo "- Creating archive"
zip -r $ARCH_NAME themes/*

echo "Done."
