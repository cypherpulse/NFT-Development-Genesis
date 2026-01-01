#!/bin/bash

# Load environment variables
set -a
source .env
set +a

# Mint NFT on Base Sepolia
forge script script/interactions.s.sol:MintBasicNft \
  --rpc-url $BASE_SEPOLIA_RPC_URL \
  --account defaultKey \
  --broadcast \
  --verify \
  --etherscan-api-key $BASESCAN_API_KEY