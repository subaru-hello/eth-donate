pragma solidity >= 0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";


contract Greeter is Ownable {
	string private _greeting = "Hello, World!";
	// address private _owner;

	// modifier onlyOwner() {
	// 	require(
	// 		msg.sender == _owner,
	// 		"Ownable: caller is not the owner"
	// 	);
	// 	_;
	// }

	// constructor() public {
	// 	_owner = msg.sender;
	// }

	function greet() external view returns(string memory) {
		return _greeting;
	}

	function setGreeting(string calldata greeting) external onlyOwner {
		_greeting = greeting;
	}

	// function owner() public view returns(address) {
	// 	return _owner;
	// }
}