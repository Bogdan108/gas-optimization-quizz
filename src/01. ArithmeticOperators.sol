// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "./Interfaces.sol";
error UnderflowError();

contract Addition is IAddition {
    uint256 number = 1;

    function addition(uint256 value) public {
        if (value > type(uint256).max - number) revert UnderflowError();
        unchecked {
            number += value;
        }
    }
}

contract Subtraction is ISubtraction {
    uint256 number = 100;

    function subtraction(uint256 value) public {
        if (value > number) revert UnderflowError();
        unchecked {
            number -= value;
        }
    }
}

contract Division is IDivision {
    function divisionBy2(uint256 number) public pure returns (uint256) {
        return number / 2;
    }

    function divisionBy128(uint256 number) public pure returns (uint256) {
        return number / 128;
    }
}

contract AdditionOptimized is IAddition {
    uint256 private number = 1;

    function addition(uint256 value) public {
        unchecked {
            number += value;
        }
    }
}

contract SubtractionOptimized is ISubtraction {
    uint256 private number = 100;

    function subtraction(uint256 value) public {
        unchecked {
            number -= value;
        }
    }
}

contract DivisionOptimized is IDivision {
    function divisionBy2(uint256 number) public pure returns (uint256) {
        return number >> 1;
    }

    function divisionBy128(uint256 number) public pure returns (uint256) {
        return number >> 7;
    }
}
