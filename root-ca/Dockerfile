# Containerized Root CA 
FROM alpine:3.20.2

LABEL maintainer="winness.rakotozafy@outlook.fr"

RUN apk update && apk add openssl

RUN mkdir -p /opt/rootca/; mkdir /opt/rootca/local/; mkdir /opt/rootca/output/; mkdir /opt/rootca/input/

WORKDIR /opt/rootca

CMD ["sleep", "infinity"]
