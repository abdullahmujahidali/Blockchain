// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

// in solidity function can return more than 1 value or type.

//Return multiple outputs
// Named output
// Destructing Assignment

contract FunctionOutputs
{
    function returnMany() public pure returns (uint, bool)
    {
        return (1, true);
    }

    function NamedOutputs() public pure returns (uint x, bool b)
    {
        x = 1;
        b = true;
    }

    function DestructingAssignment() public pure
    {
        (uint x, bool b) = returnMany();
        (, bool _b) = returnMany();

    }
}