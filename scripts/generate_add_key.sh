#!/bin/bash

#Generate an ssh key
ssh-keygen -t rsa -f ~/.ssh/server-key -C server-key -P ""

#Start the ssh-agent
eval $(ssh-agent -s)

#Add the ssh key to the ssh-agent
ssh-add ~/.ssh/server-key
