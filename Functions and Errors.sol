// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExampleContract {
    uint256 public value;

    function setValue(uint256 _newValue) external {
        // Require
        require(_newValue != 0, "The value is zero. Try again.");

        // Assert
        assert(_newValue > value);

        // Revert
        if (_newValue > 1202) {
            revert("This exceeds the maximum limit.");
        }

        // If all conditions pass, update the value
        value = _newValue;
    }
}