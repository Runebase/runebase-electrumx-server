#!/bin/sh
###############
# quick_run
###############


# configure electrumx
export COIN=Runebase
export DAEMON_URL=http://runebaseinfo:runebaseinfo@127.0.0.1
export NET=mainnet
export DB_DIRECTORY=$HOME/.electrumx/db
export SSL_CERTFILE=$HOME/.electrumx/server.crt
export SSL_KEYFILE=$HOME/.electrumx/server.key
export SERVICES=tcp://:50001,ssl://:50002,wss://:50004,rpc://
ulimit -n 65535


./electrumx_server
