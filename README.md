# A Bosh release for a Keycloak Deployment
This repository contains a deployment descriptor for the automatic deployment of Keycloak.

## Deployment Modes
This deployment currently only supports the standalone deployment of Keycloak. A HA ready deployment of Keycloak will be added later.

Deployment Mode | Description | Scalable
------------ | ------------- | -------------
Single Node | No failover or HA Capabilities, when node dies it might get recreated by Bosh after discovery of the failure. | Not yet
## Versions

Name | Version
------------ | -------------
Keycloak Server | 3.4.2

## Usage

To use this bosh release, first upload it to your bosh:

```
git clone git@github.com/evoila/keycloak-boshrelease.git
cd keycloak-boshrelease
```

To load the CI sub modules for an enablement of the building pipeline in course, please issue: 
```
git submodule init
git submodule update
```

Create release
```
bosh create-release --force
```
Upload release
```
bosh -e <ENVIRONMENT> upload-release
```

Then you have to modify your manifest. An example manifest you can find in manifest/*-dev-ENVIRONMENT.yml

Deploy release
```
bosh deploy -e <ENVIRONMENT> -d <DEPLOYMENTNAME> manifest/<YOURMANIFEST>.yml
```

## Contribution 

Welcome to contribute through pull request  

