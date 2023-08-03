//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Bank {

    mapping(address => uint) private balances;

    event Deposit(address indexed owner, uint amount);
    event Withdraw(address indexed owner, uint amount);
    event Transfer(address indexed from, address indexed to, uint amount);
    event CurrentBalance(uint indexed amount);

    function deposit(address _account, uint _number) public payable {
        balances[_account] += _number;
        emit Deposit(_account, _number);
    }

    function withdraw(address _account, uint _number) public payable {
        require(balances[_account] > 0, "You're broke!");
        balances[_account] -= _number;
        emit Withdraw(_account, _number);
    }

    function transfer(address _from, address _to, uint _number) public payable {
        require(balances[_from] >= _number, "You do not have enough funds for this transaction");
        balances[_from] -= _number;
        balances[_to] += _number;
        emit Transfer(_from, _to, _number);
    }

    function getBalance(address _address) public view returns(uint) {
        return balances[_address];
    } 
}

/*
    MAKE A DEPLOY.JS FILE AND COPY PASTE THE CODE FROM BELOW INSIDE IT :-

    // We require the Hardhat Runtime Environment explicitly here. This is optional
    // but useful for running the script in a standalone fashion through `node <script>`.
    // You can also run a script with `npx hardhat run <script>`. If you do that, Hardhat
    // will compile your contracts, add the Hardhat Runtime Environment's members to the
    // global scope, and execute the script.
    const hre = require("hardhat");
    
    async function main() { 
      const EventTest = await hre.ethers.getContractFactory("Bank");
      const eventTest = await EventTest.deploy();
    
      await eventTest.deployed();
    
      eventTest.on("Deposit", (owner, amount) => {
        console.log(`New deposit: ${owner} ${amount} WEI`);
      })
    
      eventTest.on("Withdraw", (owner, amount) => {
        console.log(`New withdraw: ${owner} ${amount} WEI`);
      })
    
      eventTest.on("Transfer", (from, to, amount) => {
        console.log(`New transfer: ${from} ${to} ${amount} WEI`);
      })
    
      eventTest.on("CurrentBalance", (amount) => {
        console.log(`Current Balance: ${amount} WEI`);
      })
    
      console.log(
        `Contract deployed to ${eventTest.address}`
      );
    }
    
    // We recommend this pattern to be able to use async/await everywhere
    // and properly handle errors.
    main().catch((error) => {
      console.error(error);
      process.exitCode = 1;
    });
*/
