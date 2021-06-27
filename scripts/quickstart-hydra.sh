#!/usr/bin/env bash

set -eoux pipefail

cd quickstart/hydra

docker-compose \
  --file=quickstart.yml \
  --file=quickstart-postgres.yml up \
  --build --force-recreate --detach

docker-compose \
  --file=quickstart.yml \
  exec hydra \
  hydra token user \
  --client-id auth-code-client \
  --client-secret auth-code-secret \
  --endpoint http://127.0.0.1:4444/ \
  --port 5555 \
  --scope openid,offline
