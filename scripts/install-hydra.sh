#!/usr/bin/env bash

set -eoux pipefail

# minikube stop
# minikube delete

# minikube start --driver=virtualbox

cd hydra

helm upgrade --install \
  --namespace=ory --create-namespace \
  --values=../config/hydra.yaml \
  ory-hydra ./
