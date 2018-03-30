
pragma solidity ^0.4.21;

contract PiggyBank {
    
    address owner;
    address child;
    
    
    function PiggyBank() {
        owner = msg.sender;
    }
    
    function setChild(address _child) {
        require(msg.sender == owner);
        child = _child;
    }
    
    function withdraw(uint amount) {
        require(msg.sender == child);
        msg.sender.transfer(amount);
    }
    
    function getBalance() view returns (uint) {
        
        return address(this).balance;
        
    }
    
    function deposit(uint amount) payable {
        require(amount == msg.value);
    }

}

