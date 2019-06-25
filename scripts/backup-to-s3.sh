#!/usr/bin/env bash
set -u

pg_dump -c > /var/data/${PGDATABASE}_dump.sql
tar -cvf /var/data/${PGDATABASE}_dump.tar.gz -C /var/data ${PGDATABASE}_dump.sql
aws s3 cp --sse aws:kms  /var/data/${PGDATABASE}_dump.sql s3://${S3_BUCKET}/${KUBE_NAMESPACE}-dbs/${PGDATABASE}_dump.tar.gz
