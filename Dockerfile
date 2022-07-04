FROM quay.io/centos/centos:stream8

ENV TERM xterm-256color
ENV USERHOME=/root
USER 0
WORKDIR $USERHOME

RUN ./init-script.sh
CMD ["/bin/bash", "-l"]
