#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER docker WITH ENCRYPTED PASSWORD 'example';
    CREATE DATABASE docker_db;
    GRANT ALL PRIVILEGES ON DATABASE docker_db TO docker;
EOSQL