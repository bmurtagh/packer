#!/bin/sh

# Install the AWS CLI tool
curl https://s3.amazonaws.com/aws-cli/awscli-bundle.zip -o awscli-bundle.zip
unzip awscli-bundle.zip
./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

# Clean up after the installer
rm -rf awscli-bundle.zip awscli-bundle