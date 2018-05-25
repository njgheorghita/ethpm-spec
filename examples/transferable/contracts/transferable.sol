pragma solidity ^0.4.24;

import {Owned} from "owned/contracts/owned.sol";

contract Transferable is Owned {
    event OwnerChanged(address indexed prevOwner, address indexed newOwner);

    function transferOwner(address newOwner) public onlyOwner returns (bool) {
        emit OwnerChanged(owner, newOwner);
        owner = newOwner;
        return true;
    }
}
