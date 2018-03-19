#!/usr/bin/env bash

NAME=k8s-dashboard
BITS=2048

#openssl dhparam -out ${NAME}.pem ${BITS}
#
#openssl req -x509 -newkey rsa:${BITS} -keyout ${NAME}.key -out ${NAME}.crt -days 1000 -nodes -subj "/CN=${NAME}"

kubectl create -f service.yaml

kubectl create -f default-backend.yaml

kubectl create secret tls tls-certificate --key ${NAME}.key --cert ${NAME}.crt

kubectl create secret generic tls-dhparam --from-file=${NAME}.pem

kubectl create -f nginx-controller.yaml

kubectl create -f ingress.yaml