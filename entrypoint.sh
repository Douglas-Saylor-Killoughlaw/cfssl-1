#!/bin/bash
set -e

if [ "$#" -lt 1 ]; then
    echo "Usage: whatever command is executed in /pad"
    exit 0
fi
echo "$@"
(cd /pad; exec "$@")

