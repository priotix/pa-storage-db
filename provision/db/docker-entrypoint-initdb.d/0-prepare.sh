#!/bin/bash

PROJ="api-storage"

if [[ -z "${HOST_ENV+x}" ]];then
  HOST_ENV="development"

  echo "${PROJ}: Environment was not set explicitly, will continue in ${HOST_ENV}..."
fi

echo "${PROJ}: Environment is set to ${HOST_ENV}..."

case "$REPLICA_SET_DB_TYPE" in
  master )
    echo "Replica set enabled. Initializing master db."
    . /docker-entrypoint-initdb.d/prepare/init-db-common.sh
    ;;
  slave )
    echo "Replica set enabled. Initializing slave db."
    ;;
  * )
    echo "Replica set not enabled. Proceeding the regular setup."
    . /docker-entrypoint-initdb.d/prepare/init-db-common.sh
    ;;
esac
