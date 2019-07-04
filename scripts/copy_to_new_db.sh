#!/usr/bin/env bash
set -u

env PGHOST=$SOURCE_PGHOST PGPASSWORD=$SOURCE_PGPASSWORD PGUSER=$SOURCE_PGUSER pg_dump -c > /var/data/${PGDATABASE}_dump.sql
