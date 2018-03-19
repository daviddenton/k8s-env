#!/usr/bin/env bash

kubectl delete ingress hello-world-ingress

kubectl delete service nginx-ingress

kubectl delete deployment default-http-backend

kubectl delete service default-http-backend

kubectl delete secret tls-dhparam

kubectl delete secret tls-certificate

rm -rf key-k8s.key

rm -rf cert-k8s.crt

kubectl delete svc hello-world-svc

kubectl delete deployment nginx-ingress-controller

kubectl delete deployment hello-world-deployment
