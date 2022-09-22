// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

//Counter
contract Counter
{
    uint public count;
    // below functions are function that will write it is not a read function
    function increment() external
    {
        count+=1;
    }
    // modifiying state variable count so neither view or pure
    function decrement() external
    {
        count-=1;
    }
}