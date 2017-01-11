#!/bin/bash -eux

# Update OS Packages
yum -y update &&

# Fetch RPM for PuppetLabs repo
rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-6.noarch.rpm &&

# Install Puppet Agent
yum -y install puppet-agent &&

# Export Puppet Path
source /etc/profile.d/puppet-agent.sh &&

# Start the Puppet service
puppet resource service puppet enable=true # ensure=running

# EOF
