// SPDX-License-Identifier: CC0

pragma solidity ^0.8.0;

contract Assign {

uint256 private a;
function add(uint256 value) public {
a += value;
}

function remove(uint256 value) public {
a -= value;
}
}