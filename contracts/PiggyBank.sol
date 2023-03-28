// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract PiggyBank {
    address payable public owner;

    constructor() payable {
        owner = payable(msg.sender);
    }

    function deposit() public payable {}

    function withdraw() public {
        uint amount = address(this).balance;

        (bool success, ) = owner.call{value: amount}("");
        require(success, "Failed to send Ether");
    }
}
