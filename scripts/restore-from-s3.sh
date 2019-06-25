#!/usr/bin/env bash
set -u

aws s3 cp s3://${S3_BUCKET}/${KUBE_NAMESPACE}-dbs/${PGDATABASE}_dump.sql /var/data/${PGDATABASE}_dump.sql
psql < /var/data/${PGDATABASE}_dump.sql
