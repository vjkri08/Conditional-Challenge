// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0; //solidity version
contract greatestnum{

    uint a;
    uint b;
    uint c;
    address owner;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyAdmin { 
        require (owner == msg.sender, "Admin access only");
        _;
    }

    function set (uint _a, uint _b, uint _c) public onlyAdmin{
        a = _a;
        b = _b;
        c = _c;
    }

    function get() public view onlyAdmin returns(uint){
        return a + b + c;
        
    }
}
