#!/usr/bin/env bash

DIR=$(pwd)

source $DIR"/env/"constants.sh

# Servic
function serv_env {
    cat <<- _EOF_
NGINX_HOST=api
NGINX_PORT=$SERV_PORT
_EOF_
}

serv_env > .server.env
