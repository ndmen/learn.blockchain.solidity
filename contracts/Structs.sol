//You can define your own type by creationg a struct.
//They are useful for grouping together related data.
//Structs can be declared outside of a contract and imported in another contract.

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Todos {
    struct Todo {
        string text;
        bool completed;
    }

    //An array of 'Todo' structs
    Todo[] public todos;

    function create(string calldata _text) public {
        //3 ways to initialize a struct
        //- calling it like a function
        todos.push(Todo(_text, false));

        //key value mapping
        todos.push(Todo({text: _text, completed: false}));

        //initialize an empty struct and then update it
        Todo memory todo;
        todo.text = _text;
        //todo.completed initialized to false

        todos.push(todo);
    }

    //Solidity automatically created a getter for 'todos' so
    //you don't actually need this function.
} 