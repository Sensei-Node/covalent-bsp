#!/bin/sh


exec ./usr/local/bin/pinner \
    --addr 0.0.0.0:5080 \
    --w3-agent-key $AGENT_KEY \
    --w3-delegation-proof-path $DELEGATION_PROOF_FILE
