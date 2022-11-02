// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.17;

contract TodoList {
    uint256 public taskCount = 0;

    struct Task {
        uint256 id;
        string content;
        bool completed;
    }

    event TaskCreated(uint256 id, string content, bool completed);
    // mapping to blockchain
    mapping(uint256 => Task) public tasks;

    constructor() {
        createTask("Learn Solidity.");
    }

    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
        // emit TaskCreated(taskCount, _content, false);
    }
}
