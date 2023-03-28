# Instructions to create this project from scratch

## Basic setup

Create a root directory for the project:

```
mkdir hh-helloworld
cd mkdir
```

Initialize nodeJS project:

```
npm init -y
```

Install Hardhat:

```
npm install --save-dev hardhat
```

Initialize the hardhat project with an empty hardhat.config.js for educational purposes:

```
npx install
```

Changing it to Typescript:

```
$ mv hardhat.config.js hardhat.config.ts
```

Install the hardhat toolbox:

```
npm install --save-dev @nomicfoundation/hardhat-toolbox
```

Import it on the configuration file:

```
import "@nomicfoundation/hardhat-toolbox";
```

Copy your smart contract file into a contracts directory.

```
mkdir contracts
touch contracts/PiggyBank.sol
```

In this case, the PiggyBank.sol is populated with:

```
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
```
