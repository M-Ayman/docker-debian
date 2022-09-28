FROM nginx:1.17.8

RUN apt-get update \
    && apt-get install -y curl procps iputils-ping rsyslog \
    && mkdir /etc/apt/sources.list.d \
    && cp /usr/share/doc/apt/examples/sources.list /etc/apt/sources.list \
    && add-apt-repository restricted \
    &&  add-apt-repository multiverse \
    && add-apt-repository universe \
    && apt update
    
