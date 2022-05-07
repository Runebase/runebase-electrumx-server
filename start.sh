#!/bin/bash -l

cd /home/bago/runebase-electrumx-server
/usr/bin/screen -X -S electrum quit
/usr/bin/screen -dmS electrum
/usr/bin/screen -S electrum -p 0 -X stuff "bash $(printf \\r)"
sleep 10
/usr/bin/screen -S electrum -p 0 -X stuff "./quick_run.sh $(printf \\r)"
