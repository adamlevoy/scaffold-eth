pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";

//import "@openzeppelin/contracts/access/Ownable.sol"; //https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract {
    address public owner = 0x99E628ef85CDD8fb1C088f8658008192bc85021a;

    struct Todo {
        string task;
        bool completed;
        // bools default value is false
    }

    Todo[] public todos;

    function addTodo(string memory _task) public {
        // 3 ways to initilize a struct
        // like a function
        todos.push(Todo(_task, false));

        // key value pair
        // todos.push(Todo({task: _task, completed: false}));

        // init empty struct then update
        // Todo memory todo;
        // todo.task = _task;
        // todos.push(todo);
    }

    function updateTodo(uint256 _index, string memory _task) public {
        Todo storage todo = todos[_index];
        todo.task = _task;
    }

    function toggleCompleted(uint256 _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }

    // free getter function with public variable
    function getTodo(uint256 _index)
        public
        view
        returns (string memory text, bool completed)
    {
        Todo storage todo = todos[_index];
        return (todo.task, todo.completed);
    }
}
