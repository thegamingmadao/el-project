#!/bin/bash
set -e
#Get the terraform zip
wget https://releases.hashicorp.com/terraform/0.11.10/terraform_0.11.10_linux_amd64.zip

#Unzip it
unzip terraform*.zip

#Move terraform binary to 
mv terraform ~/.local/bin

#Delete terraform zip file
rm terraform*.zip
