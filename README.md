# Function And Errors
The project aims to showcase the student's fundamental understanding of error handling in Solidity programming.


## Smart Contract Details

- *Name:* BankContract
- *Solidity Version:* ^0.8.0
- *License:* MIT

## Contract Functions

### deposit(uint256 amount)

- *Description:* Allows users to deposit funds into their account.
- *Parameters:*
  - amount: The amount to be deposited. Must be greater than 0.
- *Events:*
  - DepositMade: Triggered upon a successful deposit, capturing the account address and the deposited amount.

### withdraw(uint256 amount)

- *Description:* Allows users to withdraw funds from their account.
- *Parameters:*
  - amount: The amount to be withdrawn.
- *Conditions:*
  - Requires sufficient funds in the account.
  - Checks for underflow during withdrawal.
  - If the withdrawal amount exceeds 100, the transaction is reverted with the message "Withdrawal amount too high."
- *Events:*
  - WithdrawalMade: Triggered upon a successful withdrawal, capturing the account address and the withdrawn amount.

## Usage

1. *Deposit Funds:*
   - Call the deposit function with the desired deposit amount.

   
   function deposit(uint256 amount) public {...}
   

2. *Withdraw Funds:*
   - Call the withdraw function with the desired withdrawal amount.

   
   function withdraw(uint256 amount) public {...}
   

## Authors
John Angelo B. Yap

Far Eastern University - Institute of Technology

BS Computer Science With Specialization in Software Engineering
