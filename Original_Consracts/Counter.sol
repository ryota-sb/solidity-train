// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {
    // 変数宣言
    uint count; // 符号なし整数型 0と正の数のみ表現できる型 undefind integer type

    // 関数宣言
    function getCount() public view returns(uint) {
        return count;
    }

    function incrementcount() public {
        count = count + 1;
    }
}