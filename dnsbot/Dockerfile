FROM alpine:3.14

WORKDIR /root

RUN apk --no-cache update && \
    apk --no-cache add bash curl moreutils ca-certificates && \
    rm -rf /var/cache/apk/*

ADD run.sh .
RUN chmod +x ./run.sh
