FROM phusion/baseimage:latest

CMD ["/sbin/my_init"]

ADD pixelserv /usr/local/bin/pixelserv

RUN set -xe \
    && chmod 755 /usr/local/bin/pixelserv

EXPOSE 80/tcp 80/udp

ENTRYPOINT ["/usr/local/bin/pixelserv"]
