pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";

//import "@openzeppelin/contracts/access/Ownable.sol"; //https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract {
    string[] namesArray = ["adam", "rick", "morty"];

    function getName(uint256 index) public view returns (string memory) {
        return namesArray[index];
    }

    function getAllNames() public view returns (string[] memory) {
        return namesArray;
    }

    function addName(string memory newName) public returns (string[] memory) {
        namesArray.push(newName);
        return namesArray;
    }

    function removeName(uint256 index) public returns (string[] memory) {
        namesArray[index] = namesArray[namesArray.length - 1];
        namesArray.pop();
        return namesArray;
    }
}
