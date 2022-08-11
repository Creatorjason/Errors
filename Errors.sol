//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract Errors{
    //test require
    function TestRequire(uint _i) public pure {
        require(_i < 10);
    }
    // test revert
    function TestRevert(uint _i) public pure{
        if (_i > 10){
            revert("_i > 10");        }
    }
    // test assert, it checks to see if an expression evaluates to true
    uint public num = 123;
    function TestAssert() public view{
        assert(num == 123);
    }
    // using custom errors, they are user-defined log errors that saves gas
    error TheError(address caller, uint i, uint a);
    function TestCustomErrors(uint _i) public view{
        if (_i > 10){
            revert TheError(msg.sender, _i, block.timestamp); 
        }
    }
}
