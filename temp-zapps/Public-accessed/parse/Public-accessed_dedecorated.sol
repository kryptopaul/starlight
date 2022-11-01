// SPDX-License-Identifier: CC0

pragma solidity ^0.8.0;

contract Assign {

uint256 private a;
uint256 private b;



struct MyStruct {
uint256 prop1;
bool prop2;
}

MyStruct public x;

function add( MyStruct memory value) public {
a += value.prop1;
x.prop2 = true;
}

function remove( MyStruct memory value) public {
add(value);
b += value.prop1;
x.prop2 = true;
}
}