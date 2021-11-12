pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";

//import "@openzeppelin/contracts/access/Ownable.sol"; //https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

// example nested map in allowance contract
contract YourContract {
    // mapping address to another mapping
    mapping(address => mapping(address => uint256)) public allowance;

    function setAllowance(
        address _addrOwner,
        address _addrSpender,
        uint256 _amount
    ) public {
        allowance[_addrOwner][_addrSpender] = _amount;
    }

    function getAllowance(address _addrOwner, address _addrSpender)
        public
        view
        returns (uint256)
    {
        return allowance[_addrOwner][_addrSpender];
    }

    function removeAllowance(address _addrOwner, address _addrSpender) public {
        delete allowance[_addrOwner][_addrSpender];
    }
}
