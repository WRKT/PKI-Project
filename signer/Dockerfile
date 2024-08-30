# Containerized signer
FROM ubuntu:24.04

RUN apt update && apt -y install openssl
RUN apt clean

COPY ./openssl.cnf /etc/ssl/signer/openssl.cnf
COPY scripts/generate_cert.sh /usr/local/bin/generate_cert.sh

RUN chmod +x /usr/local/bin/generate_cert.sh

CMD ["generate_cert.sh"]
