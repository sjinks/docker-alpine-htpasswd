FROM alpine:3.15.4
RUN apk add --no-cache apache2-utils
USER nobody:nobody
ENTRYPOINT ["/usr/bin/htpasswd"]
