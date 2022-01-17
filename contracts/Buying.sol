pragma solidity  >=0.4.22 <0.9.0;

contract Buying{
    address[16] public buyers;

    function buy(uint prodId) public returns (uint){
        require(prodId >=0 && prodId <=100);
        buyers[prodId] = msg.sender;
        return prodId;
    }

    function getBuyers() public view returns (address[16] memory){
        return buyers;
    }
}
