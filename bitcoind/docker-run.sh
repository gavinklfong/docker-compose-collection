docker run --rm -it \
  -p 18443:18443 \
  -p 18444:18444 \
  -p 8332:8332 \
  -p 18332:18332 \
  --name bitcoind \
  ruimarinho/bitcoin-core \
  -printtoconsole \
  -regtest=1 \
  -rpcpassword=123456 \
  -rpcuser=bitcoinuser \
  -rpcbind=0.0.0.0 \
  -rpcport=8332 \
  -rpcallowip=0.0.0.0/0
