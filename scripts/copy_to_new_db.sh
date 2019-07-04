#!/usr/bin/env bash
set -u

echo Dumping from $SOURCE_PGHOST
env PGHOST=$SOURCE_PGHOST PGPASSWORD=$SOURCE_PGPASSWORD PGUSER=$SOURCE_PGUSER pg_dump -c > /var/data/${PGDATABASE}_dump.sql

echo Restoring to $PGHOST
psql < /var/data/${PGDATABASE}_dump.sql

rm /var/data/${PGDATABASE}_dump.sql
