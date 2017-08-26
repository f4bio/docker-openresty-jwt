FROM openresty/openresty:alpine

ENV LUAROCKS_VERSION "5.3"

RUN apk update
RUN apk add luarocks luarocks$LUAROCKS_VERSION
RUN /usr/bin/luarocks-$LUAROCKS_VERSION install lua-resty-jwt

ENTRYPOINT ["/usr/local/openresty/bin/openresty", "-g", "daemon off;", "-c", "/conf/nginx.conf"]
