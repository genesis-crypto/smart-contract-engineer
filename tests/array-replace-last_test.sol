// SPDX-License-Identifier: GPL-3.0
        
pragma solidity >=0.4.22 <0.9.0;

// This import is automatically injected by Remix
import "remix_tests.sol"; 

// This import is required to use custom transaction context
// Although it may fail compilation in 'Solidity Compiler' plugin
// But it will work fine in 'Solidity Unit Testing' plugin
import "remix_accounts.sol";
import "../contracts/array-replace-last.sol";

// File name has to end with '_test.sol', this file can contain more than one testSuite contracts
contract testSuite {

    function removeItemAtIndex() public {
        ArrayReplaceLast myContract = new ArrayReplaceLast();
        myContract.remove(1);
        Assert.equal(uint(myContract.arr(1)), 4, "Not equal");
        Assert.equal(uint(myContract.arr(0)), 1, "Not equal");
    }
}
    