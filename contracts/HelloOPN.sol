// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract HelloOPN {

    string public message;

    address public owner;

    constructor() {
        owner = msg.sender;
        message = "Hello OPN Builder!";
    }

    function setMessage(string memory newMessage) public {

        require(msg.sender == owner, "Only owner");

        message = newMessage;
    }

    function getMessage() public view returns(string memory){

        return message;

    }
}
