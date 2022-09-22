// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract FunctionIntro
{
    function add(uint x, uint y) external pure returns (uint)
    {
        return x + y;
    }

    function subtract(uint x, uint y) external pure returns (uint)
    {
        return x - y;
    }
}

// state variables are saved on blockchain it remains on block chain it is declared inside a contract but outside a function


contract StateVariable
{
    uint public myUint = 123; // saved on block chain.

    function foo() external pure returns (uint)
    {
        uint notStateVariable = 456; // local variable (only exsists inside the function).
        return notStateVariable;
    }
}

// view functions can read data from blockchain whereas pure doesn't read anything from blockchain both are read only functions
