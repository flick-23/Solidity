//SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

//importing SimpleStorage => as good as having the program here
import "./SimpleStorage.sol";

contract StoragFactory is SimpleStorage {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage(); //create obj of type simpleStorage
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber)
        public
    {
        // Address
        // ABI => Application Binary Interface
        //Method - 1
        // SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        // simpleStorage.store(_simpleStorageNumber);

        //method-2
        return
            SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]))
                .store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        //method - 1
        // SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        // return simpleStorage.retrieve();

        //or Method 2
        return
            SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]))
                .retrieve();
    }
}

//importing
//inheritance
//deploy contracts from contracts
//interact with direct contracts from outside our contracts
