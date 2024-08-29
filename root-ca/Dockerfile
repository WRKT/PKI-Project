# Containerized Root CA 
FROM alpine:latest

LABEL maintainer="winness.rakotozafy@outlook.fr"

RUN apk update && apk add openssl

RUN mkdir -p /opt/rootca/{local, output, input}

WORKDIR /opt/rootca

CMD ["sleep", "infinity"]
