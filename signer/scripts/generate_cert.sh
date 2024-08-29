#!/bin/bash

set -e 

mkdir -p /etc/ssl/signer/private /etc/ssl/signer/certs
openssl req -new -config /etc/ssl/signer/openssl.cnf -keyout /etc/ssl/signer/private.key -out /etc/ssl/signer/signer.csr -nodes

openssl x509 -req -in /etc/ssl/signer/signer.csr -CA /etc/ssl/ca/certs/ca.crt -CAkey /etc/ssl/ca/private/ca.key -CAcreateserial -out /etc/ssl/signer/certs/signer.crt -days 3650
