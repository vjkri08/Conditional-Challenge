// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.13;

contract ViewAndPure {
    address   payable public owner;
    uint public  x = 5;
    event Deposit(address sender, uint amount, uint balance);
    event Transfer(address _to, uint _amount, uint balance);
     
     constructor()   {
        owner = payable(msg.sender);
    }

    
    function addToX(uint y) public view returns (uint) {
        return x + y;
    }

    
    function add(uint i, uint j) public pure returns (uint) {
        return i + j;
    }
    

    function deposit () external payable {
        emit Deposit(msg.sender, msg.value, address(this).balance);
    }

    function getBalance () external view returns (uint) {
        return address(this).balance;
    }
    modifier OnlyOwner() {
        require(msg.sender == owner, "You are not a owner");
        _;
    }
    function Transferr(address payable _to, uint _amount) public OnlyOwner {
        _to.transfer(_amount);
        emit Transfer(_to, _amount, address(this).balance);
    }
    

}
