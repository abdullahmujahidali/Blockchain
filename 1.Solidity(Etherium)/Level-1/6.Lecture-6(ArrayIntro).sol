// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract ArrayIntro
{
    uint[4] public arr = [10,32,43,654];

    function setter(uint index, uint value) public
    {
        arr[index]=value;
    }
    
    function length() public view returns(uint)
    {
        return arr.length;
    }
}