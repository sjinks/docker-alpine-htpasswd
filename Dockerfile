FROM alpine:3.14.0
RUN apk --no-cache -U upgrade && apk add --no-cache apache2-utils
USER nobody:nobody
ENTRYPOINT ["/usr/bin/htpasswd"]
