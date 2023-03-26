// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract globalFunctions {
     uint valuebalance;
     address owner;
    function real() external payable {
        valuebalance = msg.value;
        owner = msg.sender;
    }
   function variables1() public view returns (uint){
       return valuebalance;
    }
    function variables() public view returns(address) {
        return owner;
    }
}
