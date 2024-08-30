# Containerized signer
FROM ubuntu:24.04

RUN apt update && apt -y install openssl

COPY openssl.cnf.template /etc/ssl/openssl.cnf.template
COPY scripts/generate_cert.sh /usr/local/bin/generate_cert.sh

RUN chmod +x /usr/local/bin/generate_cert.sh

CMD ["generate_cert.sh"]
