#!/bin/sh

exec geth \
    --mainnet --log.debug \
    --v5disc=true --txlookuplimit=0 \
    --cache=8192 --syncmode=snap \
    --light.ingress=200 --light.egress=200 \
    --light.maxpeers=3 \
    --http=true --http.addr=0.0.0.0 \
    --http.api=admin,debug,eth,net,web3,txpool \
    --http.vhosts=* --ws=true \
    --ws.addr=0.0.0.0 \
    --ws.api=admin,debug,eth,net,web3,txpool \
    --ws.origins=* --datadir=/data/.ethereum/ \
    --authrpc.jwtsecret=/jwt.hex \
    --authrpc.addr=0.0.0.0 \
    --authrpc.port=8551 --authrpc.vhosts=* \
    --replication.targets=redis://redis:6379/0?topic=replication \
    --replica.result --replica.specimen \
    --replica.blob --log.file=/data/.ethereum/geth/log.log