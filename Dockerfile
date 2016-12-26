FROM debian:jessie

MAINTAINER opsxcq <opsxcq@thestorm.com.br>

RUN apt-get update && \
    apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    python \ 
    apache2 \
    php5 \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY src /src

EXPOSE 8080

COPY main.sh /
ENTRYPOINT ["/main.sh"]
CMD ["default"]

