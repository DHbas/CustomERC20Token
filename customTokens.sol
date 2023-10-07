// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        // The ERC20 constructor from OpenZeppelin sets the initial total supply and assigns all tokens to the deployer.
    }

    // Mint new tokens and send them to the provided address.
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Burn a specific amount of tokens from the caller's balance.
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    // Transfer tokens from the sender to the recipient.
    function transfer(address to, uint256 amount) public override returns (bool) {
        require(to != address(0), "ERC20: transfer to the zero address is not allowed");
        return super.transfer(to, amount);
    }

    // Transfer tokens from the sender to the recipient on behalf of someone else.
    function transferFrom(address from, address to, uint256 amount) public override returns (bool) {
        require(to != address(0), "ERC20: transfer to the zero address is not allowed");
        return super.transferFrom(from, to, amount);
    }
}
