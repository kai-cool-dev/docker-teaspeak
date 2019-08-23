FROM debian:buster

LABEL vendor="Kai.cool DEV"
LABEL com.teaspeak.version="1.3.22"

RUN apt-get update -y && \
    mkdir /opt/teaspeak

COPY teaspeak.tar.gz /opt/teaspeak/

RUN tar -zxvf /opt/teaspeak/teaspeak.tar.gz -C /opt/teaspeak/ && \
    cd /opt/teaspeak/ && ./teastart_minimal.sh && \
    ls -thora /opt/teaspeak/

CMD ["/opt/teaspeak/teastart.sh","start"]

EXPOSE 9987/udp
EXPOSE 10011
EXPOSE 30033
