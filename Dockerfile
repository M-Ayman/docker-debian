FROM nginx:1.17.8

RUN  apt-get remove --purge --auto-remove -y \
    && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list \
    && cp /usr/share/doc/apt/examples/sources.list /etc/apt/sources.list \
    && add-apt-repository restricted \
    && add-apt-repository multiverse \
    && add-apt-repository universe \
    && apt update \
    && apt-get install -y curl procps iputils-ping rsyslog 
    
