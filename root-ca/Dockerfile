# Containerized Root CA 
FROM alpine:3.20.2

LABEL maintainer="winness.rakotozafy@outlook.fr"

RUN apk update && apk add openssl

COPY openssl.cnf /etc/ssl/ca/openssl.cnf
COPY scripts/generate_ca.sh /usr/local/bin/generate_ca.sh

RUN chmod +x /usr/local/bin/generate_ca.sh

CMD ["generate_ca.sh"]
