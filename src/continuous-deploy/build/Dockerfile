FROM debian

RUN apt-get update && apt-get install -y git
COPY ./scripts /scripts

RUN chmod +x /scripts/*

VOLUME [ "/data" ]
WORKDIR /

CMD [ "/scripts/build.sh" ]
