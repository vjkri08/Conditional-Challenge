// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ErrorHandling {
    uint public balance = 100;
    uint public num = 100;
    
    function TestingRequire(uint _deposit) external returns(uint) {
        require(_deposit > 0, "Deposit must be greater than 0");
        balance = balance + _deposit;
        return balance;
    
    }
    
    function TestingAssert() external view {
        assert(num == 100);
    }
    function Addingnum() external returns (uint) {
         num = num + 1;
         return num;
    }
    function testRevert(uint _withdraw) external view {
        if (_withdraw > balance) {
            revert("The amount to withdraw is invalid");
        }
    }
    

}
