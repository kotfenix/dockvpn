FROM alpine:latest
RUN apk add --update --no-cache openssl openvpn iptables ip6tables nftables socat curl
ADD ./bin /usr/local/sbin
VOLUME /etc/openvpn
EXPOSE 7443/tcp 1194/udp 8080/tcp
CMD run
