#!/usr/bin/env bash

function cert {
    openssl req -x509 -newkey rsa:4096 -keyout key-bob.com.key -out cert-bob.com.crt -days 1000 -nodes -subj "/CN=bob.com"
    echo key:
    cat key-$1.key | base64
    echo cert:
    cat cert-$1.crt | base64
}

cert k8s-dashboard
cert docker-registry
cert chart-repo