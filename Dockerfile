FROM alpine:edge

RUN apk update \
    && apk add -u fluidsynth \
    tini \
    && rm -rf /var/lib/apt/lists/*

COPY docker-entrypoint.sh /docker-entrypoint.sh

WORKDIR /fluidsynth

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["fluidsynth"]
