pragma solidity 0.5.2;

contract HelloWorld{
    string public text;
    uint public number;
    address public userAddress;
    bool public answer;
    mapping (address => bool) public hasInteracted;
    
    function setText(string memory myText) public{
        text = myText;
        setInteracted();
    }

    function setNumber (uint myNumber) public{
        number = myNumber;
        setInteracted();
    }
    function setUserAddress() public {
        userAddress = msg.sender;
        setInteracted();
    }
    function setAnswer(bool trueOrFalse) public {
        answer = trueOrFalse;
        setInteracted();
    }
    function setInteracted() private{
        hasInteracted[msg.sender] = true;
    }
}