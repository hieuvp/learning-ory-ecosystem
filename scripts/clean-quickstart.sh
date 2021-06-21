#!/usr/bin/env bash

set -eoux pipefail

cd quickstart/kratos

docker-compose \
  --file=quickstart.yml --file=quickstart-standalone.yml down
