// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // public variables here
    string public tokenName = "MAHALA";
    string public tokenAbbrv = "MHL";
    uint public totalSupply = 0;
    
    // mapping variable here
    mapping (address => uint) public balances;
    
    // mint function
    function mint(address _addr, uint _value) public{
        totalSupply += _value;
        balances[_addr] += _value;
    }

    // burn function
    function burn(address _addr, uint _value) public {
        if(_value < balances[_addr]){
            totalSupply -= _value;
            balances[_addr] -= _value;
        }
    }
}
