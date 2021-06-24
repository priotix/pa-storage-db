#!/bin/bash

echo "${PROJ}:${HOST_ENV} Running migrations..."

cp /docker-entrypoint-initdb.d/scripts/migrations.js.dist /docker-entrypoint-initdb.d/scripts/migrations.js
sed -i -e "s/{{db-pswd}}/${DB_PSWD}/g" /docker-entrypoint-initdb.d/scripts/migrations.js

mongo /docker-entrypoint-initdb.d/scripts/migrations.js