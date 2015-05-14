#!/bin/bash
brew update
brew install docker
brew install boot2docker
boot2docker init
boot2docker start
eval "$(boot2docker shellinit)"
