FROM mongo:4.4.5
LABEL maintainer=priotix

COPY provision/db/docker-entrypoint-initdb.d /docker-entrypoint-initdb.d
RUN chown -R mongodb:mongodb /docker-entrypoint-initdb.d

COPY provision/keys /keys
RUN chmod -R 700 /keys
RUN chown -R mongodb:mongodb /keys
