FROM    python:3.7-alpine

RUN     apk add --no-cache git \
          build-base \
          libffi \
          libffi-dev \
          openssl \
          openssl-dev

RUN     pip install \
          errbot \
          slackclient

RUN     apk del \
          build-base \
          libffi \
          libffi-dev \
          openssl \
          openssl-dev

RUN     adduser -S -D -h /home/errbot errbot

WORKDIR /home/errbot

RUN     errbot --init
COPY    config.py ./

CMD     ["errbot"]
