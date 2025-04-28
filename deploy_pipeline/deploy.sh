#!/bin/bash

cd "$(dirname "$0")"

# Check current environment
if [ -f current/ENVIRONMENT ]; then
  ACTIVE=$(cat current/ENVIRONMENT)
  echo "Active environment: $ACTIVE"
else
  echo "No active environment found. Starting fresh with green_env."
  ACTIVE="blue_env"  # Force first switch to green
fi

# Backup current to rollback
echo "Backing up current to rollback/"
rm -rf rollback/*
cp -r current/* rollback/

# Remove current
rm -rf current

# Switch environment
if [ "$ACTIVE" == "green_env" ]; then
  cp -r blue_env current
  echo "blue_env" > current/ENVIRONMENT
  echo "Switched to BLUE environment."
else
  cp -r green_env current
  echo "green_env" > current/ENVIRONMENT
  echo "Switched to GREEN environment."
fi

echo "Now serving: $(cat current/ENVIRONMENT)"
