pragma solidity ^0.6.6;

contract SimpleStorage
{
   // uint256 favoriteNumber=5;
   // bool favoriteBool=false;
   // string favoriteString= "String";
    //int256 favoriteInt=5;
    
    uint256  favoriteNumber;
    bool favoriteBool;

    struct People {
        uint256 favoriteNumber;
        string name;
    }
    //People public person =People({favoriteNumber: 2, name: "abc"});
    People[] public people;
    mapping(string => uint256) public nameToFavoritNumber;
    function store(uint256 _favoriteNumber) public {
     favoriteNumber = _favoriteNumber;
    }
    function retrieve() public view returns(uint256)
    {
        return favoriteNumber;
    }
    function abcPerson(string memory _name, uint256 _favoriteNumber) public
    {
        people.push(People(_favoriteNumber, _name));
        nameToFavoritNumber[_name] = _favoriteNumber;


    }
}
