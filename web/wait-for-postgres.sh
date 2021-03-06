#!/bin/bash
# wait-for-postgres.sh

set -e

host="db:5432"
password="dbroot"

until PGPASSWORD=dbroot psql --dbname=neurogram --host=db --port=5432 --username=dbroot -c "\q"; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done
