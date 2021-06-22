#!/usr/bin/env bash

set -eoux pipefail

# minikube stop
# minikube delete

# minikube start --driver=virtualbox

cd oathkeeper

helm upgrade --install \
  --namespace=ory --create-namespace \
  --values=../config/oathkeeper.yaml \
  ory-oathkeeper ./
