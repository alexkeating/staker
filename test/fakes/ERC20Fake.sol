// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.23;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IMintable} from "../../src/interfaces/IMintable.sol";

/// @dev An ERC20 token that allows for public minting for use in tests.
contract ERC20Fake is ERC20, IMintable {
  constructor() ERC20("Fake Token", "FAKE") {}

  /// @dev Public mint function useful for testing
  function mint(address _account, uint256 _value) public {
    _mint(_account, _value);
  }
}
