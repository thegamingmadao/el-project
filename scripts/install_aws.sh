#!/bin/bash

set -e

#Install pip, unzip and dirmngr
sudo apt-get install -y python-pip unzip dirmngr

#Install aws cli
pip install awscli --upgrade --user

export Path=~/.local/bin:$PATH 
