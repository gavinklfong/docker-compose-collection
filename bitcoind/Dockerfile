FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install --yes software-properties-common
RUN add-apt-repository --yes ppa:luke-jr/bitcoincore
RUN apt-get update

RUN apt-get install --yes bitcoind

RUN useradd -ms /bin/bash bitcoind
USER bitcoind
WORKDIR /home/bitcoind
# ADD bitcoin.conf /home/bitcoind/


EXPOSE 28332

EXPOSE 8089

CMD ["/bin/bash"]