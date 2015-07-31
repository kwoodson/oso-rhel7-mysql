#!/bin/bash


# We MUST be in the same directory as this script for the build to work properly
cd $(dirname $0)

# Make sure base is built with latest changes since we depend on it.
../oso-rhel7-ops-base/build.sh

# Build ourselves
echo
echo "Building oso-rhel7-mysql..."
docker build $@ -t oso-rhel7-mysql .

