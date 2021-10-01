pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";

//import "@openzeppelin/contracts/access/Ownable.sol"; //https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract {
    // declare count
    uint256 public count;

    // declare owner
    address public owner;

    constructor() {
        // set owner to sender
        owner = 0x99E628ef85CDD8fb1C088f8658008192bc85021a;
    }

    // function to get the count, dupicative because count is public
    // function get() public view returns (uint256) {
    //     return count;
    // }

    // function to increment count by 1
    function inc() public {
        // condition that requires
        require(msg.sender == owner, "You are not the owner!");
        count++;
    }

    // function to decrement count
    function dec() public {
        require(msg.sender == owner, "You are not the owner!");
        count--;
    }

    // function to increase count by amount
    function add(uint256 amount) public {
        require(msg.sender == owner, "You are not the owner!");
        count += amount;
    }
}
