#!/usr/bin/env bash

export SERV_PORT="3000"
export HOST="database"
export DB_PORT="5432"
export DB_USER="postgres"
export DB_NAME="api_prod"
export PASSWORD="$(date +%s | sha256sum | base64 | head -c 32)"
export RIGHT_NOW=$(date +"%x %r %Z")
export TIME_STAMP="Since $RIGHT_NOW by $USER"
