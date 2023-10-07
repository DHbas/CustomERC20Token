# Project Title

Custom ERC-20 Token Contract

## Description

This project contains a Solidity smart contract called `MyToken`, which is designed to create and manage a custom ERC-20 token on the Ethereum blockchain. This token can be used for various purposes such as creating your own cryptocurrency, managing digital assets, or even participating in decentralized applications.

## Getting Started

### Installing

To use this smart contract, you need to interact with it on the Ethereum blockchain. You can deploy it using tools like Remix or Truffle. Here are some general steps:

1. Download the Solidity source code for the contract.
2. Deploy the contract on the Ethereum blockchain using tools like Remix, Truffle, or a similar development environment.
3. Interact with the contract using Ethereum wallet software, such as MetaMask.

### Executing program

Here are the general steps for interacting with the MyToken contract after it's deployed:

Initialize the Token: During contract deployment, you'll need to provide a name and symbol for your token. These parameters are passed to the constructor of the `MyToken` contract.

Minting Tokens: The owner of the contract (the address that deployed it) has the exclusive ability to mint new tokens. This can be done using the `mint` function, which takes the recipient's address and the amount of tokens to mint as parameters.

Burning Tokens: Any token holder can burn their own tokens using the `burn` function. This function allows you to reduce the total supply by specifying the number of tokens to burn.

Transferring Tokens: You can transfer tokens between addresses using the `transfer` and `transferFrom` functions. The `transfer` function allows you to send tokens directly from your address to another address. The `transferFrom` function allows you to send tokens on behalf of someone else if you have been given permission.

## Help

If you encounter any common problems or have questions about using this contract, you can refer to Ethereum and Solidity documentation for guidance on deploying and interacting with smart contracts.


## Author

This smart contract example was created by David John Bas.
You can reach out to me via email at davidjohnh.bas@gmail.com.
