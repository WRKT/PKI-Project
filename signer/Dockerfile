FROM alpine:3.20.2

RUN apk add --no-cache openssl

COPY openssl.cnf /etc/ssl/signer/openssl.cnf
COPY scripts/generate_cert.sh /usr/local/bin/genrate_cert.sh

RUN chmod +x /usr/local/bin/generate_cert.sh

CMD ["generate_cert.sh"]
