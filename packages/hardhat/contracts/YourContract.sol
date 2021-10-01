pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";

//import "@openzeppelin/contracts/access/Ownable.sol"; //https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract {
    // declare count
    uint256 public count;

    // function to get the count, dupicative because count is public
    // function get() public view returns (uint256) {
    //     return count;
    // }

    // function to increment count by 1
    function inc() public {
        count++;
    }

    // function to decrement count
    function dec() public {
        count--;
    }
}
