#!/usr/bin/env bash

DIR=$(pwd)

source $DIR"/env/"constants.sh

# App
function app_env {
    cat <<- _EOF_
PORT=$SERV_PORT
DATABASE_HOST=$HOST
DATABASE_PORT=$DB_PORT
DATABASE_USER=$DB_USER
DATABASE_PASSWORD=$PASSWORD
DATABASE_DB=$DB_NAME
DATABASE_URL=postgres://$DB_USER:$PASSWORD@$HOST:$DB_PORT/$DB_NAME
DEFAULT_URL_OPTIONS=app.miamono.com
_EOF_
}

app_env > .app.env
