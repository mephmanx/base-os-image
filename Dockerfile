FROM quay.io/centos/centos:stream8

ENV TERM xterm-256color
ENV USERHOME=/root
USER 0
WORKDIR $USERHOME

ARG VERSION
ENV VERSION=$OS_VERSION
COPY init-script.sh /root
RUN chmod +x /root/init-script.sh
RUN ./init-script.sh "$VERSION"
CMD ["/bin/bash", "-l"]
