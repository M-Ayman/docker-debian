FROM nginx:1.22.0

RUN  apt-get remove --purge --auto-remove -y \
    && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list \
    && apt update \
    && apt-get install -y curl procps iputils-ping rsyslog 
    
