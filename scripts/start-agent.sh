#!/bin/sh

exec /home/ubuntu/covalent/bsp-agent/bin/bspagent \
    --redis-url="redis://redis:6379/0?topic=replication" \
    --avro-codec-path="./codec/block-ethereum.avsc"  \
    --binary-file-path="./bin/block-ethereum" \
    --block-divisor=35 \
    --proof-chain-address=0x7487b04899c2572A223A8c6eC9bA919e27BBCd36  \ 
    --consumer-timeout=10000000 \       
    --log-folder=/logs/ \  
    --ipfs-pinner-server="http://ipfs:3001"