# NFT Development Genesis

[![Foundry](https://img.shields.io/badge/Built%20with-Foundry-FF007F)](https://getfoundry.sh/)
[![Solidity](https://img.shields.io/badge/Solidity-^0.8.19-blue)](https://soliditylang.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![GitHub Issues](https://img.shields.io/github/issues/cypherpulse/NFT-Development-Genesis)](https://github.com/cypherpulse/NFT-Development-Genesis/issues)
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/cypherpulse/NFT-Development-Genesis)](https://github.com/cypherpulse/NFT-Development-Genesis/pulls)

A comprehensive toolkit for developing, testing, and deploying ERC-721 NFTs on Ethereum using Foundry. This project serves as a genesis for NFT development, providing robust smart contracts, thorough testing, and deployment scripts to kickstart your Web3 journey.

## 🚀 Features

- **ERC-721 Compliant**: Fully compliant with the ERC-721 standard for non-fungible tokens.
- **Gas Optimized**: Efficient smart contracts designed for minimal gas usage.
- **Comprehensive Testing**: Extensive test suite using Foundry's Forge for reliability.
- **Deployment Scripts**: Ready-to-use scripts for deploying to various networks.
- **Modular Architecture**: Easily extensible for custom NFT features.
- **Security Audited**: Built with security best practices and OpenZeppelin standards.

## 📋 Table of Contents

- [NFT Development Genesis](#nft-development-genesis)
  - [🚀 Features](#-features)
  - [📋 Table of Contents](#-table-of-contents)
  - [🔧 Prerequisites](#-prerequisites)
  - [📦 Installation](#-installation)
  - [💻 Usage](#-usage)
    - [Development Workflow](#development-workflow)
    - [Key Contracts](#key-contracts)
  - [🧪 Testing](#-testing)
  - [🚀 Deployment](#-deployment)
  - [🤝 Contributing](#-contributing)
    - [Development Process](#development-process)
    - [Guidelines](#guidelines)
    - [Code of Conduct](#code-of-conduct)
  - [📄 License](#-license)
  - [🆘 Support](#-support)
  - [🙏 Acknowledgments](#-acknowledgments)

## 🔧 Prerequisites

Before you begin, ensure you have the following installed:

- [Foundry](https://getfoundry.sh/) (Forge, Cast, Anvil, Chisel)
- [Git](https://git-scm.com/)
- [Node.js](https://nodejs.org/) (optional, for additional tooling)

Verify your Foundry installation:

```bash
forge --version
```

## 📦 Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/cypherpulse/NFT-Development-Genesis.git
   cd NFT-Development-Genesis
   ```

2. **Install dependencies:**

   ```bash
   forge install
   ```

3. **Build the project:**

   ```bash
   forge build
   ```

## 💻 Usage

### Development Workflow

1. **Start a local development node:**

   ```bash
   anvil
   ```

2. **Deploy contracts locally:**

   ```bash
   forge script script/DeployBasicNft.s.sol --fork-url http://localhost:8545 --broadcast
   ```

3. **Interact with contracts using Cast:**

   ```bash
   cast call <contract_address> "name()" --rpc-url http://localhost:8545
   ```

### Key Contracts

- `BasicNft.sol`: Core ERC-721 NFT contract with minting functionality.

## 🧪 Testing

Run the comprehensive test suite:

```bash
forge test
```

Run tests with gas reporting:

```bash
forge test --gas-report
```

Run specific tests:

```bash
forge test --match-path test/BasicNftTest.t.sol
```

## 🚀 Deployment

Deploy to a testnet or mainnet:

1. Set up your environment variables (create a `.env` file):

   ```bash
   PRIVATE_KEY=your_private_key_here
   RPC_URL=https://your-rpc-url-here
   ```

2. Deploy using the script:

   ```bash
   forge script script/DeployBasicNft.s.sol --rpc-url $RPC_URL --private-key $PRIVATE_KEY --broadcast --verify
   ```

   Note: Add `--verify` for contract verification on Etherscan.

## 🤝 Contributing

We welcome contributions from the community! Here's how you can get involved:

### Development Process

1. **Fork the repository**
2. **Create a feature branch:**

   ```bash
   git checkout -b feature/your-feature-name
   ```

3. **Make your changes and add tests**
4. **Run the test suite:**

   ```bash
   forge test
   ```

5. **Format your code:**

   ```bash
   forge fmt
   ```

6. **Commit your changes:**

   ```bash
   git commit -m "Add: Brief description of your changes"
   ```

7. **Push to your fork:**

   ```bash
   git push origin feature/your-feature-name
   ```

8. **Create a Pull Request**

### Guidelines

- Follow the [Solidity Style Guide](https://docs.soliditylang.org/en/latest/style-guide.html)
- Write comprehensive tests for new features
- Update documentation as needed
- Ensure all tests pass before submitting a PR
- Use clear, descriptive commit messages

### Code of Conduct

This project adheres to a code of conduct. By participating, you are expected to uphold this code. Please report unacceptable behavior to [maintainers@cypherpulse.com](mailto:maintainers@cypherpulse.com).

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Support

If you have questions or need help:

- 📧 **Email**: support@cypherpulse.com
- 💬 **Discord**: [Join our community](https://discord.gg/cypherpulse)
- 🐛 **Issues**: [GitHub Issues](https://github.com/cypherpulse/NFT-Development-Genesis/issues)
- 📖 **Documentation**: [Foundry Book](https://book.getfoundry.sh/)

## 🙏 Acknowledgments

- [Foundry](https://getfoundry.sh/) - The toolkit powering this project
- [OpenZeppelin](https://openzeppelin.com/) - For secure smart contract libraries
- The Ethereum community for continuous innovation

---

**Built with ❤️ by the Cypherpulse team**
