#!/bin/sh

exec ./ipfs-server \
    -port 3001 \
    -w3-agent-key $AGENT_KEY \
    -w3-delegation-file $DELEGATION_PROOF_FILE