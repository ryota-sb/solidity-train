// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelBooking {
    // ホテルのオーナー
    address payable public owner;

    // 空き室か満室の状態
    enum Statuses { Vacant, Occupied }
    Statuses public currentStatuses;

    // 初期化関数
    constructor() {
        owner = payable(msg.sender);
        currentStatuses = Statuses.Vacant;
    }

    modifier onlyWhileVacant {
        // 満室かどうかを判定
        require(currentStatuses == Statuses.Vacant, "already ocuppied");
        _;
    }

    modifier costs(uint _amount) {
        // お金が足りるか
        require(msg.value >= _amount, "not enough ether");
        _;
    }

    // 予約関数
    function booking() public payable onlyWhileVacant costs(2 ether){
        // 満室状態にする
        currentStatuses = Statuses.Occupied;
        // オーナーにお金を送金する
        owner.transfer(msg.value);
    }
}