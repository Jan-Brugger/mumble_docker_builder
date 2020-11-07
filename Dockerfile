FROM debian:buster-slim

ARG MUMBLE_VERSION

RUN apt-get update \
    # && apt-get upgrade -qq -y \
    && apt-get install -qq -y mumble-server=${MUMBLE_VERSION}* \
    && apt-get clean -y \
    && apt-get autoclean -y \
    && apt-get autoremove -y --purge \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 64738 64738/udp
 
CMD ["/usr/sbin/murmurd", "-fg"]
