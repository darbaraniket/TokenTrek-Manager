// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract TokenTrekManager {
    address public owner;
    string public trekName;
    uint256 public totalMembers;

    constructor(string memory _trekName) {
        owner = msg.sender;
        trekName = _trekName;
        totalMembers = 0;
    }

    // Function 1: Add a new member to the trek
    function addMember() public {
        totalMembers += 1;
    }

    // Function 2: Update trek name (only owner)
    function updateTrekName(string memory _newName) public {
        require(msg.sender == owner, "Only owner can update");
        trekName = _newName;
    }

    // Function 3: Get trek details
    function getTrekDetails() 
        public 
        view 
        returns (string memory, uint256, address) 
    {
        return (trekName, totalMembers, owner);
    }
}

