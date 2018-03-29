pragma solidity ^0.4.0;

// additional: what about public and private?

contract NotifyMySon {
    
    uint amount;
    string date;
    
    function changeAmountAndDate(string newDate, uint newAmount) {
        amount = newAmount;
        date = newDate;
    }
    
    function checkAmountAndDate() returns (uint, string) {
        return (amount, date);
    }
    
}
