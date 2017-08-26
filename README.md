openresty-jwt
=============

based on `openresty/openresty` and `ubergarm/openresty-nginx-jwt` - HUGE THANKS!

## how to

1. set environment variables (optional I guess)
    ```bash
    export BASE_DIR="/some/path"
    export JWT_SECRET="somesecret"
    ```

2. build
    ```bash
    docker build -t openresty-jwt $BASE_DIR/scripts/openresty
    ```

3. run
    ```bash
    docker run --rm -it \
      --name openresty-jwt \
      -p 31337:31337 \
      -e JWT_SECRET=$JWT_SECRET \
      -v $BASE_DIR/scripts/openresty/certs:/certs \
      -v $BASE_DIR/scripts/openresty/conf:/conf \
      -v $BASE_DIR/scripts/openresty/logs:/logs \
      -v $BASE_DIR/scripts/openresty/scripts:/scripts \
      -d openresty-jwt
    ```
