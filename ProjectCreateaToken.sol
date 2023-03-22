// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
   string public TokenName = "COIN";
   string public TokenAbbv = "CN";
   uint public TotalSupply = 0;

mapping(address => uint) public balances;
   
   function mint(address _address, uint _value) public {
      TotalSupply = TotalSupply + _value;
      balances[_address] = balances[_address] + _value;
    }
    
    function burn(address _address, uint _value) public {
      if(balances[_address] >= _value) {
        TotalSupply = TotalSupply - _value;
        balances[_address] = balances[_address] - _value;
      }
    }
}
