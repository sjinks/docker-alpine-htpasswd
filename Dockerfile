FROM alpine:3.18.3@sha256:7144f7bab3d4c2648d7e59409f15ec52a18006a128c733fcff20d3a4a54ba44a
RUN apk add --no-cache apache2-utils
USER nobody:nobody
ENTRYPOINT ["/usr/bin/htpasswd"]
