#!/usr/bin/env bash

set -eoux pipefail

# minikube stop
# minikube delete

# minikube start --driver=virtualbox

cd kratos
helm dependency update

helm upgrade --install \
  --namespace=ory --create-namespace \
  --values=../config/kratos.yaml \
  ory-kratos ./
