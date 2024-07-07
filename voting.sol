// From 'learn solidity by example', the official documentation
// https://docs.soliditylang.org/en/v0.5.2/solidity-by-example.html
pragma solidity 0.8.26;

contract Ballot {
	struct Voter {
		uint weight;
		bool voted;
		address delegate;
		uint vote;
	}

	struct Proposal {
		bytes32 name; // Name of the proposal
		uint voteCount; // Total number of votes received
	}

	address public chairPerson; 

	// Mapping addresses to each voter struct,
	mapping(address => Voter) public voters;

	Proposal[] public proposals;




