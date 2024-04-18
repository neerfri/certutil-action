FROM ubuntu:20.04

RUN apt-get update \
    && apt-get install -y openssl libnss3-tools \
    && rm -rf /var/lib/apt/lists/*

RUN addgroup --gid 127 docker \
    && adduser --disabled-password --gecos '' --uid 1001 --gid 127 runner

COPY entrypoint.sh /opt/entrypoint.sh
ENTRYPOINT ["/opt/entrypoint.sh"]

