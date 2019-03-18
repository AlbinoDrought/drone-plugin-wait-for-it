FROM alpine:3.9

RUN apk add --no-cache bash

COPY . /wait-for-it

ENTRYPOINT ["bash", "/wait-for-it/entrypoint.sh"]
