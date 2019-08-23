FROM debian:buster

LABEL vendor="Kai.cool DEV"
LABEL com.teaspeak.version="1.3.22"

RUN apt-get update -y && apt install -y unzip && mkdir /opt/teaspeak

COPY teaspeak /opt/teaspeak/

RUN chmod +x /opt/teaspeak/teastart_minimal.sh && \
    chmod +x /opt/teaspeak/TeaSpeakServer && \
    /opt/teaspeak/teastart_minimal.sh

CMD ["/opt/teaspeak/TeaSpeakServer"]

EXPOSE 9987/udp
EXPOSE 10011
EXPOSE 30033
