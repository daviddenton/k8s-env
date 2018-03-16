#!/usr/bin/env bash

helm init
helm repo add incubator https://kubernetes-charts-incubator.storage.googleapis.com
helm dependency update
helm delete --purge k8s-env
helm upgrade --install k8s-env .
