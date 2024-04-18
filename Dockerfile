FROM ubuntu:20.04

RUN apt-get update \
    && apt-get install -y openssl libnss3-tools \
    && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /opt/entrypoint.sh
ENTRYPOINT ["/opt/entrypoint.sh"]

WORKDIR /workspace
