#!/bin/sh

set -e 

mkdir -p /etc/ssl/ca/private /etc/ssl/ca/newcerts /etc/ssl/ca/certs

chmod 700 /etc/ssl/ca/private

touch /etc/ssl/ca/index.txt

echo 1000 > /etc/ssl/ca/serial

openssl req -x509 -config /etc/ssl/ca/openssl.cnf -newkey rsa:2048 -days 3650 -out /etc/ssl/ca/certs/ca.crt -outform PEM -subj "/CN=ca.wrkt.com" -nodes
