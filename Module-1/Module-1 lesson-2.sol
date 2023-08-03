// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Hello {

    uint public c = 1;
    uint public d = 2;

    address payable public admin;

    // pure
    function sum( uint a, uint b) public pure returns ( uint) {
        return a + b;
    }

    // view
    function multiply() public view returns ( uint) {
        return c * d;
    }

    // payable
    function addMoney () external payable {

    }
}
