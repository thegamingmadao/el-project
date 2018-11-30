#!/bin/bash

set -e

#Install pip and unzip
sudo apt-get install -y python-pip unzip

#Install aws cli
pip install awscli --upgrade --user

export Path=~/.local/bin:$PATH 
