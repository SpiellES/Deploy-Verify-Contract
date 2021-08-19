pragma solidity 0.8.0;

contract First {
    string message;

    constructor() public {
        message = "";
    }

    function getMessage() public view returns (string memory) {
        if ((keccak256(abi.encodePacked((message))) == keccak256(abi.encodePacked(("")))))
            return "The message is empty. Please set any string.";
        else
            return message;
    }

    function setMessage(string memory _str) public returns(string memory) {
        message = _str;
    }
}
