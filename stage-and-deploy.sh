#!/bin/sh
set -e

path=$(dirname $0)

cd $path
bosh -e vbox create-release --force

bosh -e vbox upload-release

bosh -e vbox -d keycloak deploy manifests/keycloak-dev-local.yml -n 
