# Containerized Root CA 
FROM ubuntu:24.04

LABEL maintainer="winness.rakotozafy@outlook.fr"

RUN apt update && apt -y install openssl

COPY openssl.cnf /etc/ssl/openssl.cnf
COPY scripts/generate_ca.sh /usr/local/bin/generate_ca.sh

RUN chmod +x /usr/local/bin/generate_ca.sh

CMD ["generate_ca.sh"]
