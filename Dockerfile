FROM nginx:1.22.0

RUN  apt update \
    && apt-get install -y curl procps iputils-ping rsyslog 
    
