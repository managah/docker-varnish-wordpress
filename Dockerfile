FROM alpine:3.15

RUN apk add --no-cache varnish

EXPOSE 8080

ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
