//SPDX-License-Identifier:MIT
//Smart Contract1
//1.only owner of contract can modify the message,use(msg.sender)

//2.count the number of updates to message,
//3.everyone can see the updated message
pragma solidity ^0.8.7;
contract Postman{
    string public myMessage ="Unchain";
    address public ownerAddress;
    uint public count=0;

    constructor(){
        ownerAddress=msg.sender;
    }
    
    function updateMessage(string memory _newMessage) public  {
        if(ownerAddress==msg.sender){
         myMessage=_newMessage;
         count++;
         }
    }
    
  
}