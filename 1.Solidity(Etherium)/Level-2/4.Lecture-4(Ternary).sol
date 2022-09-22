// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

//if else
contract IfElse
{
    function example(uint _x) external pure returns (uint)
    {
        return _x<10 ? 1 : 2;
    }
}
