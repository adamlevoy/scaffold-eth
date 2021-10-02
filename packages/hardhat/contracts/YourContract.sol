pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";

//import "@openzeppelin/contracts/access/Ownable.sol"; //https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract {
    address public owner = 0x99E628ef85CDD8fb1C088f8658008192bc85021a;
    mapping(address => uint256) balances;

    function set(address _addr, uint256 amount) public {
        balances[_addr] = amount;
    }

    function increment(address _addr) public {
        balances[_addr]++;
    }

    function decrement(address _addr) public {
        balances[_addr]--;
    }

    function get(address _addr) public view returns (uint256) {
        return balances[_addr];
    }
}
