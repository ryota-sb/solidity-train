// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TypesContract {
    //ステート変数(グローバル変数)
    uint public myUint = 2;
    uint256 public myUint256 = 1;


    //ローカル変数
    function getValue() public pure returns(uint) {
        uint value = 1;
        return value;
    }
}

