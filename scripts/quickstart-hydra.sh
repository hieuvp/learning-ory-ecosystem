#!/usr/bin/env bash

set -eoux pipefail

cd quickstart/hydra

docker-compose \
  --file=quickstart.yml \
  --file=quickstart-postgres.yml up \
  --build --force-recreate
