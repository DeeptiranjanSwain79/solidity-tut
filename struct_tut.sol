// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Todos {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function createTodo(string calldata _text) public {
        // 3 ways to initialize a struct

        // 1 --> Calling like a function
        todos.push(Todo(_text, false));

        // 2 --> Key value mapping
        todos.push(Todo({text: _text, completed: false}));

        // 3 --> Initialize an empty struct and then update it
        Todo memory todo1;
        todo1.text = _text;
        // by default the boolean value is false (for "completd")
        todos.push(todo1);
    }

    function get(uint256 _index)
        public
        view
        returns (string memory text, bool completed)
    {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

    function updateText(uint256 _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    function toggleCompleted(uint256 _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}
