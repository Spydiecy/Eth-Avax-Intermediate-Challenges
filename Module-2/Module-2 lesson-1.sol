// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MemoryTypes {
    uint[] public num;

    function typeStorage() public{
        num.push(2);
        num.push(3);

        uint[] storage anArray = num;

        anArray[0] = 1; 
        // When we click on typeStorage and retrieve the array the value at 0 is 1
    } 

    function typeMemory() public{
        num.push(2);
        num.push(3);

        uint[] memory anArray = num;

        anArray[0] = 1; 
        // When we click on typeMemory and retrieve the array the value at 0 is 2
    } 
}
