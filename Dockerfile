FROM    python:3.7-slim

RUN     pip install errbot
RUN     useradd -r -m erric

USER    erric
WORKDIR /home/erric

RUN     errbot --init

CMD     ["errbot"]
