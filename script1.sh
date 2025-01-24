#!/usr/bin/env bash

# Create ssh key pair
ssh-keygen -t ed25519 -f ~/.ssh/lab3-key -C "lab3-key"

# Import key
aws ec2 import-key-pair --key-name "bcitkey" --public-key-material fileb://~/.ssh/lab3-key.pub
