#!/usr/bin/env bash

helm init
helm dependency update
helm delete k8s-env
helm upgrade --install k8s-env .
