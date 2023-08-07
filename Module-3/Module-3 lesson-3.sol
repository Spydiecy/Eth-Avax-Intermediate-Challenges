// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract PureAndView {
    //State variable declared
    uint256 a = 5; 

    function ViewSubstraction(uint256 b) public view returns (uint256) {
        return a - b;
    }

    function PureSubstraction(uint256 _a, uint256 _b) public pure returns (uint256) {
        return _a - _b;
    }
}
