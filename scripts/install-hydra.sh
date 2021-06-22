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

set +x
printf "\nkubectl port-forward --namespace=ory svc/ory-hydra-public 4444:4444"
printf "\nkubectl port-forward --namespace=ory svc/ory-hydra-admin 4445:4445\n\n"
