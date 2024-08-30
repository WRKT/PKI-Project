#!/bin/bash

set -e 

# Check if FQDN is set
if [ -z "$FQDN" ]; then
  echo "Error: FQDN environment variable is not set."
  exit 1
fi

# Replace the placeholder with the actual FQDN in the template
sed "s/__FQDN__/${FQDN}/g" /etc/ssl/openssl.cnf.template > /etc/ssl/openssl.cnf

mkdir -p /etc/ssl/signer/private /etc/ssl/signer/certs
openssl req -new -config /etc/ssl/openssl.cnf -keyout /etc/ssl/signer/private/${FQDN}.key -out /etc/ssl/signer/${FQDN}.csr -nodes

# Signing the CSR with CA certificate
openssl x509 -req -in /etc/ssl/signer/${FQDN}.csr -CA /etc/ssl/ca/certs/ca.crt -CAkey /etc/ssl/ca/private/ca.key -CAcreateserial -out /etc/ssl/signer/certs/${FQDN}.crt -days 3650

# Verify the certificate to ensure it's not self-signed
openssl verify -CAfile /etc/ssl/ca/certs/ca.crt /etc/ssl/signer/certs/${FQDN}.crt
