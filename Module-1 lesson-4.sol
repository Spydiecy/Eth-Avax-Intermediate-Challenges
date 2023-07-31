// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract globalFunc_In_MsgContext {
    uint256 public gasLeft;
    address public senderAddress;
    uint256 public value;

    constructor() payable {
        gasLeft =  gasleft();
        senderAddress = msg.sender;
        value = msg.value;
    }
}
