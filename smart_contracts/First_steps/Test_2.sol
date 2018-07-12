pragma solidity ^0.4.24;


contract newContract {
    
    
    uint myVariable;
    
    
    function MyContract() public payable{
        myVariable = 6;
    }
    
    
    function setVariable(uint myNewVariable) public{
        
        myVariable = myNewVariable;
    
    }


    function getVariable () public constant returns(uint) {
        return myVariable;
    }
    
}