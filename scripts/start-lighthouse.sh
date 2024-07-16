#!/bin/sh

exec lighthouse bn \
    --network mainnet \
    --execution-endpoint http://execution:8551 \
    --http --http-address 0.0.0.0 \
    --execution-jwt /jwt.hex \
    --checkpoint-sync-url https://sync.invis.tools \
    --disable-deposit-contract-sync