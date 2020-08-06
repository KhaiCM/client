#!/bin/bash
set -e
npm install
npm start
tail -f /dev/null
exec "$@"
