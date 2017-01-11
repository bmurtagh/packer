#!/bin/bash -eux

# Clean up after packer
rm -rf /tmp/*

# Add `sync` so Packer doesn't quit too early, before the large file is deleted.
sync
