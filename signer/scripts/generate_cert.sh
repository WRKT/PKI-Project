#!/bin/sh

set -e 

mkdir -p /etc/ssl/signer/private /etc/ssl/signer/certs
openssl req -new -config /etc/ssl/signer/openssl.cnf -keyout /etc/ssl/signer/private/${FQDN}.key -out /etc/ssl/signer/${FQDN}.csr -nodes

# Signing the CSR with CA certificate
openssl x509 -req -in /etc/ssl/signer/${FQDN}.csr -CA /etc/ssl/ca/certs/ca.crt -CAkey /etc/ssl/ca/private/ca.key -CAcreateserial -out /etc/ssl/signer/certs/${FQDN}.crt -days 3650

# Verify the certificate to ensure it's not self-signed
openssl verify -CAfile /etc/ssl/ca/certs/ca.crt /etc/ssl/signer/certs/${FQDN}.crt
