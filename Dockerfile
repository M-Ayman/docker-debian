FROM nginx:1.17.8

RUN apt-get update \
    && apt-get install -y curl procps iputils-ping rsyslog 
