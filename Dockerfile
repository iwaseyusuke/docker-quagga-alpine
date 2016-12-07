# Quagga based on Alpine

FROM alpine

MAINTAINER IWASE Yusuke <iwase.yusuke0@gmail.com>
ARG user=iwaseyusuke

USER root
WORKDIR /root

COPY ENTRYPOINT.sh /ENTRYPOINT.sh

RUN apk add --no-cache quagga \
 && touch /etc/quagga/zebra.conf \
 && touch /etc/quagga/ripd.conf \
 && touch /etc/quagga/ripngd.conf \
 && touch /etc/quagga/ospfd.conf \
 && touch /etc/quagga/ospf6d.conf \
 && touch /etc/quagga/bgpd.conf \
 && touch /etc/quagga/isisd.conf \
 && touch /etc/quagga/vtysh.conf \
 && chmod +x /ENTRYPOINT.sh

ENTRYPOINT ["/ENTRYPOINT.sh"]
