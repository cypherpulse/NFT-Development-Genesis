#!/bin/bash

# Load environment variables
set -a
source .env
set +a

# Deploy BasicNft to Base Sepolia
forge script script/DeployBasicNft.s.sol \
  --rpc-url $BASE_SEPOLIA_RPC_URL \
  --account defaultKey \
  --broadcast \
  --verify \
  --etherscan-api-key $BASESCAN_API_KEY