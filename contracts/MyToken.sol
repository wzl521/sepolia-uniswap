// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {
    constructor(string memory name_,string memory symbol,uint256 totalSupply) ERC20(name_, symbol) Ownable(msg.sender) {

        _mint(msg.sender, totalSupply * 10 ** 18);
    }
}