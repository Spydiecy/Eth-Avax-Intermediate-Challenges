// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

abstract contract AbstractContract {
    function abstractAddition() public virtual returns (uint256);
}

interface InterfaceContract {
    function interSubstraction() external view returns (uint256 );
}

contract SmartContract is AbstractContract, InterfaceContract {
    function abstractAddition() public pure override returns (uint256) {
        uint a = 1;
        uint b = 2;
        return a + b;
    }

    function interSubstraction() public pure override returns (uint256 ) {
        uint a = 3;
        uint b = 1;
        return a - b;
    }
}
