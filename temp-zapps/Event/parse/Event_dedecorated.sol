// SPDX-License-Identifier: CC0

pragma solidity ^0.8.0;

contract Test {

mapping (address => uint256) private x;
uint256 private z;
uint256 public a;
uint256 public b;

function add(uint256 y) public {
if (x[msg.sender] > 5) {
z = y + 3;
} else {
x[msg.sender] = y + 1;
}
}

function donw(uint256 p) public {
if (a > 5) {
b += p;
} else {
b = p + 1;
}
}

}