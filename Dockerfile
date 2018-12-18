FROM    python:3.7-slim

RUN     apt-get -y update && \
        apt-get -y upgrade

RUN     apt-get autoclean -y && \
        apt-get clean -y && \
        apt-get -y autoremove && \
        apt-get remove --purge --auto-remove \
          systemd 

RUN     pip install \ 
          errbot \
          slackclient

RUN     useradd -r -m -s /bin/false erric

USER    erric
WORKDIR /home/erric

RUN     errbot --init

CMD     ["errbot"]
