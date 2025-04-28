#!/bin/bash

cd "$(dirname "$0")"

echo "Rolling back to previous version..."

# Remove current
rm -rf current

# Restore backup from rollback
mkdir current
cp -r rollback/* current/

echo "Rollback complete. 'current' now contains the previous version."
