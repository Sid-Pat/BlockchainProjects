// SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract ExampleAddress{
    address public addr;

    constructor(address currAdr){
        addr=currAdr;
    }

    function updS(address addr1) public {
        addr=addr1;
    }

    function msgSender() public view returns(address){
        return msg.sender;
    }


}