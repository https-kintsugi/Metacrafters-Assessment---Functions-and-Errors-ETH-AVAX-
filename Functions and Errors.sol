// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BankContract {
    mapping(address => uint256) public balances;

    event DepositMade(address indexed account, uint256 amount);
    event WithdrawalMade(address indexed account, uint256 amount);

    function deposit(uint256 amount) public {
        require(amount > 1, "Deposit should be greater than 1");
        assert(balances[msg.sender] + amount >= balances[msg.sender]);

        balances[msg.sender] += amount;
        emit DepositMade(msg.sender, amount);
    }

    function withdraw(uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient funds");
        require(balances[msg.sender] - amount <= balances[msg.sender], "Warning: Underflow!");

        if (amount > 100) {
            revert("You must not exceed 100");
        }

        balances[msg.sender] -= amount;
        emit WithdrawalMade(msg.sender, amount);
    }
}
