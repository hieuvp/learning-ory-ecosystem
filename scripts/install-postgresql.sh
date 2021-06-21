#!/usr/bin/env bash

set -eoux pipefail

# minikube stop
# minikube delete

# minikube start --driver=virtualbox

cd postgresql

helm upgrade --install \
  --namespace=ory --create-namespace \
  --values=../config/postgresql.yaml \
  ory-postgresql ./
