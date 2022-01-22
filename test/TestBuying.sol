// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Buying.sol";

contract TestBuying {

     Buying buying = Buying(DeployedAddresses.Buying());

    // 测试宠物id
    uint expectedPetId = 8;

    //收养宠物
    address expectedAdopter = address(this);

    // 测试
    function testUserCanAdoptPet() public {
        uint returnedId = buying.buy(expectedPetId);

        Assert.equal(returnedId, expectedPetId, "Buying of the expected merch should match what is returned.");
    }

    // Testing retrieval of a single pet's owner
    function testGetAdopterAddressByPetId() public {

        address adopter = buying.buyers(expectedPetId);

        Assert.equal(adopter, expectedAdopter, "Owner of the expected pet should be this contract");
    }

    // Testing retrieval of all pet owners
    function testGetAdopterAddressByPetIdInArray() public {
        // Store adopters in memory rather than contract's storage
        address[16] memory adopters = buying.getBuyers();

        Assert.equal(adopters[expectedPetId], expectedAdopter, "Owner of the expected pet should be this contract");
    }

}