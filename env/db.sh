#!/usr/bin/env bash

DIR=$(pwd)

source $DIR"/env/"constants.sh

# Banco de dados
function db_env {
    cat <<- _EOF_
DEBUG=false
PG_TRUST_LOCALNET=true
PG_PASSWORD=$PASSWORD
DB_NAME=$DB_NAME
_EOF_
}

db_env > .db.env
