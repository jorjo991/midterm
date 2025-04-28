#!/bin/bash

cd "$(dirname "$0")"

# Remove old current if it exists
rm -rf current

# Start by linking to green_env
ln -s green_env current
echo "Initialized current/ to point to green_env"

# Optional: preload rollback just in case
cp -r green_env/* rollback/
echo "Rollback preloaded with green_env"
