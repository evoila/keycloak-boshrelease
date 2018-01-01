#!/bin/bash

# build package for Keycloak server according to https://keycloak.gitbooks.io/server-developer-guide/content/v/2.3/topics/themes.html#_deploying_themes

ARCH_NAME="theme.tar.gz"

echo "Building package to `pwd`/$ARCH_NAME..."

echo "– Creating meta-information"
mkdir META-INF

# "types" should include all subdirectories of theme --> could be automated as well (TODO)
cat <<JSON > META-INF/keycloak-themes.json
{
    "themes": [{
        "name" : "$1",
        "types": [ "login", "account" ]
    }]
}
JSON

echo "- Creating archive"
tar cfvz $ARCH_NAME theme META-INF

echo "- Cleaning up"
rm -r META-INF

echo "Done."
