// SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract SampleFallback{

uint public balanceMone;
    
function deposit() public payable{
    balanceMone+=msg.value;
}

function getContractBalance() public view returns(uint){
    return address(this).balance;
}

function withdrawAll() public{
    address payable to  = payable(msg.sender);
    to.transfer(getContractBalance());
}

function withDrawToAddress(address payable to)public{
    to.transfer(getContractBalance());
}

}