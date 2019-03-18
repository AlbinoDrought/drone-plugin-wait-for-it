FROM alpine:3.9

RUN apk add --no-cache bash

COPY . /wait-for-it

WORKDIR /wait-for-it

ENTRYPOINT ["bash", "entrypoint.sh"]
