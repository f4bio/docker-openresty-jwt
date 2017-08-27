FROM openresty/openresty:alpine-fat
MAINTAINER Fabio Tea <iam@f4b.io> (http://iam.f4b.io)

RUN luarocks install lua-resty-jwt

COPY ./certs /certs
COPY ./conf /conf
COPY ./logs /logs

ENTRYPOINT ["/usr/local/openresty/bin/openresty", "-g", "daemon off;", "-c", "/conf/nginx.conf"]
