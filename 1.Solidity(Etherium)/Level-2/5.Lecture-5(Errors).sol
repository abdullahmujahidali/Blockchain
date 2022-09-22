// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

// require, revert, assert
// gas refund state updates are reverted
// custom error - save gas
contract Error
{
    function testRequire(uint _i) public pure
    {
        require(_i<=10, "i is greater than 10");
    }
    //revert is good for nesting
    function testRevert(uint _i) public pure
    {
        if(_i > 10){
        revert("i is greater than 10");
        }
    }

    function testRevertComplex(uint _i) public pure
    {
        if(_i> 1){
            //code
            if(_i > 2){
                //code
                if(_i>10){
                    revert("i is greater than 10");
                }
            }
        }
    }
    //assert to be use when condition is always to be true if false it means there's a bug in your contract.
    
    uint public num=123;

    function testAssert() public view
    {
        assert(num==123);
    }

    //custom error

    error MyError(address caller, uint i);

    function testCustomError(uint _i) public view
    {
        if(_i > 10){
            revert MyError(msg.sender, _i);
        }
    }
}
