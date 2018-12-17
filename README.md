# bob

Bob, The Builder
![lovato/bob](/bob.jpg?raw=true)

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
- Dropbox Uploader

## Available Sub Containers

- C++
- Python
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

#### Run Image from Source

- ./run.sh
  > Every sub container has a ./run.sh script

#### Run Image from Docker Hub

- docker run -it lovato/bob[-subcontainer]
  > Default command is /bin/bash

### Use as Base Image

- FROM lovato/bob[-subcontainer]:latest
