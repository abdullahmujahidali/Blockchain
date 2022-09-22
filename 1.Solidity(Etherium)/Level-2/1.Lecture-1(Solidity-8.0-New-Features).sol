// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

//how to import
// import {symbol1 as alias, symbol2} from "filename";
// import {Unauthorized, helper} from "./Sol.sol";
// import {Unauthorized, helper as h1} from "./Sol.sol";

//safe math
contract SafeMath
{
    function testUnderflow() public pure returns (uint)
    {
        uint x = 0;
        x--;
        return x;
    }

    function testUncheckedUnderflow() public pure returns (uint)
    {
        uint x = 0;
        unchecked {x--;}
        return x;

    }
}

//Custom error

error Unauthorized(address caller);

contract VendingMachine{    
    address payable owner = payable(msg.sender);
    // error Unauthorized(address caller);
    function widthraw() public{
        if(msg.sender != owner)
            revert Unauthorized(msg.sender);
        owner.transfer(address(this).balance);
    }
}

//functions outside contract

function helper(uint x) pure returns (uint)
{
    return x * 2;
}

contract TestHelper{

    function test() external pure returns (uint)
    {
        return helper(123);
    }
}