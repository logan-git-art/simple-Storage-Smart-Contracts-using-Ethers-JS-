// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7; //vesrsion of the solidity

contract SimpleStorage{
//data types : boolean, uint, int, address, bytes
//bool hasFavoriteNumber = true;
 uint256  favoriteNumber ;
// string favoriteNumberInText = "Five";
// int256 favoriteInt = -5;
// address myaddress = 0xf53C81b889dB5CA1188A36963466D7D329D75D41;
// bytes32 favoriteBytes = "cat";
struct People{
    uint256 favoriteNumber;
    string name;
}
People[] public people;


mapping (string => uint256) public nameToFavoriteNumber; 

function addPeople(string memory _name, uint256 _favoriteNumber) public{
    people.push(People(_favoriteNumber, _name)) ;
    nameToFavoriteNumber[_name] = _favoriteNumber;
} 
function retrieve() public view returns (uint256){
        return favoriteNumber;
    }
function store(uint256 favNumber) public virtual {
    favoriteNumber = favNumber;
    favoriteNumber = favoriteNumber +1;
}
}