// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract IfElse
{
    function check(int a) public pure returns(string memory)
    {
        string memory value;

        if(a>0)
        {
            value="Greater than 0";
        }
        else if(a==0)
        {
            value="Value is equal to 0";
        }
        else 
        {
            value="Value is less than 0";
        }
        return value;
    }
}