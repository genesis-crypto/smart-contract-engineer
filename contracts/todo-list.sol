// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

contract TodoList {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string calldata text) external {
        todos.push(Todo(text, false));
    }

    function updateText(uint _index, string calldata _text) external {
        Todo storage item = todos[_index];
        item.text = _text;
    }

    function toggleCompleted(uint _index) external {
        Todo storage item = todos[_index];
        item.completed = !item.completed;
    }

    function get(uint _index) external view returns(string memory, bool) {
        Todo memory item = todos[_index];
        return (item.text, item.completed);
    }
}