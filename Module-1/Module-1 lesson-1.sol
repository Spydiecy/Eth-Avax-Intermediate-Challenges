// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract AdminOnly{

    uint a;
    address admin;

    constructor(){
        admin = msg.sender;
    }

    modifier onlyAdmin { 
        require (admin == msg.sender, "only admin can access");
        _;
    }

    function set (uint _a) public onlyAdmin{
        a = _a;
    }

    function get() public view onlyAdmin returns(uint){
        return a + 1;
    }
}
