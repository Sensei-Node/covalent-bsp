#!/bin/sh

# exec tail -f /dev/null
exec ./bsp-agent \
    --redis-url="redis://redis:6379/0?topic=replication" \
    --avro-codec-path="./codec/block-ethereum.avsc" \
    --binary-file-path="./bin/block-ethereum/" \
    --log-folder="./logs" \
    --ipfs-pinner-server="http://ipfs:3001" \
    --block-divisor=3 \
    --proof-chain-address=$PROOF_CHAIN_ADDR \
    --consumer-timeout=15