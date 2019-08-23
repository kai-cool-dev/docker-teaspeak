FROM debian:buster

LABEL vendor="Kai.cool DEV"
LABEL de.teaspeak.version="1.3.22"

RUN apt-get update -y && apt install -y unzip && mkdir /opt/teaspeak

COPY teaspeak /opt/teaspeak/

WORKDIR /opt/teaspeak/

RUN chmod +x /opt/teaspeak/teastart_minimal.sh && \
    chmod +x /opt/teaspeak/TeaSpeakServer && \
    chmod +x /opt/teaspeak/teastart.sh && \
    /opt/teaspeak/teastart_minimal.sh

ENTRYPOINT ["/opt/teaspeak/teastart.sh"]

CMD ["start"]

EXPOSE 9987/udp
EXPOSE 10011
EXPOSE 30033
