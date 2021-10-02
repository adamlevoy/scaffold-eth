pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";

//import "@openzeppelin/contracts/access/Ownable.sol"; //https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract {
    address public owner = 0x99E628ef85CDD8fb1C088f8658008192bc85021a;

    // Nested mappings
    mapping(address => mapping(uint256 => bool)) public nestedMap;

    // func to set nested map
    function setMap(
        address _addr,
        uint256 _i,
        bool _bool
    ) public {
        nestedMap[_addr][_i] = _bool;
    }

    // func to delete nest map
    function removeMap(address _addr, uint256 _i) public {
        delete nestedMap[_addr][_i];
    }

    // func to get nested map
    function get(address _addr, uint256 _i) public view returns (bool) {
        return nestedMap[_addr][_i];
    }
}
