FROM keto/alpine:3.9

RUN apk add --no-cache memcached

ENTRYPOINT ["memcached"]

USER memcached
EXPOSE 11211
CMD ["-u", "memcached", "-v"]