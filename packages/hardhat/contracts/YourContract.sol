pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";

//import "@openzeppelin/contracts/access/Ownable.sol"; //https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract {
    struct Character {
        string name;
        string race;
        uint256 age;
        uint256 level;
    }

    Character[] public characters;

    mapping(uint256 => address) public characterToOwner;
    mapping(address => uint256) public ownerToCharacter;
    mapping(address => uint256) public ownerCharacterCount;

    event NewCharacter(
        address _owner,
        uint256 id,
        string _name,
        string _race,
        uint256 _age,
        uint256 level
    );

    function createCharacter(
        string memory _name,
        string memory _race,
        uint256 _age
    ) public {
        characters.push(Character(_name, _race, _age, 1));
        uint256 id = characters.length - 1;
        characterToOwner[id] = msg.sender;
        ownerToCharacter[msg.sender] = id;
        ownerCharacterCount[msg.sender]++;
        emit NewCharacter(msg.sender, id, _name, _race, _age, 1);
    }

    function showMyCharacterName() public view returns (string memory) {
        uint256 characterId = ownerToCharacter[msg.sender];
        return characters[characterId].name;
    }
}
