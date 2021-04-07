
FROM alpine:3.11

RUN apk add --no-cache \
    curl \
    git \
    jq \
    bash &&\
    rm -rf /tmp/*

COPY releases-action /usr/local/bin/

ENTRYPOINT ["releases-action"]
