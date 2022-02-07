//SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage {
    // uint256 favNumbberber = 5;
    // bool favBool = false;
    // string favouriteString = "String";
    // int256 favInt = 23;
    // address favAddress = 0xf29485d465aFc00Fd330FB99446ebCFFc6c4559A;
    // bytes32 favouriteBytes = "cat";

    uint256 favfavNumbber;

    //structs
    struct People {
        uint256 favouriteNumber;
        string name;
        //creating an obejct of the struct
        //People public person = People({favouriteNumber :2, name :"Flick"});
    }

    //array of pepole
    People[] public people;

    //maps - dictionary like DS that stores key value pairs
    mapping(string => uint256) public nameToFavouriteNumber;

    function store(uint256 _favfavNumbber) public {
        favfavNumbber = _favfavNumbber;
    }

    //view, pure => does not change the state
    function retrieve() public view returns (uint256) {
        return favfavNumbber;
    }

    //memory => stores data only during program execution time and delete it after execution.
    //storage => keep it forever
    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        //method 1
        // people.push(People({favouriteNumber: _favouriteNumber, name: _name}));

        //method 2
        people.push(People(_favouriteNumber, _name));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}

//Contract created on ether scan
//https://rinkeby.etherscan.io/tx/0xdf43bb41020e63d7f294506bf7211439c0871bfaa0cf9ebc81a7773a762a7aa2
