FROM    python:3.7-slim

RUN     apt-get -y update && \
        apt-get -y upgrade

RUN     apt autoclean -y && \
        apt-get clean -y && \
        apt -y autoremove

RUN     pip install errbot
RUN     useradd -r -m erric

USER    erric
WORKDIR /home/erric

RUN     errbot --init

CMD     ["errbot"]
