# Bob, The Builder

![lovato/bob](https://github.com/lovato/docker-bob/raw/develop/bob.jpg?raw=true)

"Can we _build_ it? Yes we can!"

## What

A base docker container inspired on atlassian/default-image:2.
There are several derivated containers for building on such languages.

## Available Tools

### General

- Vim
- Wget & cURL
- httpie
- hooks4git
- ssh client
- redis-server (because of yes!)

### SCM

- GIT
- Mercurial

### Linters

- markdown
- dockerfile
- travis yml

### Package Managers

- pip
- npm

### Packaging & Deploy

- zip & unzip
- awscli
- [serverless](https://github.com/serverless/serverless)
- Dropbox Uploader

## Available Sub Containers

- C++
- Python (2.7/3.6/3.7/3.8/3.9/3.10/3.11)
- NodeJS
- Java8 - Android - Android with NDK

## Usage

### Pulling

#### Pulling from Docker Hub

- docker pull lovato/bob[-subcontainer]:latest

#### Build from GitHub

- git clone <https://github.com/lovato/docker-bob.git>
- cd docker-bob
- ./build.sh
  > Every sub container has a ./build.sh script

### Running

#### Run Image from Local Source

- ./run.sh
  > Every sub container has a ./run.sh script  
  > It accepts one parameter and injects it into the container execution.  
  > If no parameter is issued, the execution starts in interactive mode.

#### Run Image from Docker Hub

- docker run -it lovato/bob[-subcontainer]
  > Default command is /bin/bash

### Use as Base Image

- FROM lovato/bob[-subcontainer]:latest
