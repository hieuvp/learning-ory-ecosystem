#!/usr/bin/env bash

set -eoux pipefail

cd quickstart/kratos

docker-compose \
  --file=quickstart.yml \
  --file=quickstart-postgres.yml up \
  --build --force-recreate --detach
