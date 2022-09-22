// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

//Function modfiier - reuse code before and / or after function
// Basic inputs, sandwich

contract FunctionModifier
{
    bool public paused;
    uint public count;

    function setPause(bool _paused) external
    {
        paused = _paused;
    }

    modifier whenNotPaused()
    {
        require(!paused, "paused");
        _; //tells soliditiy to call the actual function that this function modifer wraps
    }

    modifier cap(uint _x)
    {
        require(_x<100, "x>-100");
        _;
    }

    function increment() external whenNotPaused
    {
        count+=1;
    }
    function decrement() external whenNotPaused
    {
        count-=1;
    }

    function incBy(uint _x) external whenNotPaused cap(_x)
    {
        count += _x;
    }

    //sandwiches a function example
    modifier sandwich()
    {
        count +=10;
        _;
        count *=2;
    }

    function foo() external sandwich
    {
        count +=1;
    }
}