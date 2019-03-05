# About
One of the concepts of the ideal computing experience to me is to run every server/daemon in its own container in an isolated environment which has only access to the necessry resources to get it running and functioning well.


This repository contains my setr of Dockerfiles of the servers I usually use in my daily computing routine. While *most* of the container are made by writing a Dockerfile for it I don't rely on Docker itself so much because and I build and deploy the containers using a combination of multiple tools like `buildah`, `docker2aci` and `rkt` to reduce the overhead created by running the docker daemon.

# Requirements
1. docker
2. docker2aci
3. buildah
4. rkt
5. make

# Building
Simply running make will generate the ACI images of all Dockerfiles and Shell files in the repository in `./build` directory.

`$ make`

There are multiple options that can be passed to make to alter its default behaviour
```
$ make docker ## Saves the images to your local Docker repository.
```