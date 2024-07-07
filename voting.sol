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

	address public chairperson; 

	// Mapping addresses to each voter struct saved under 'voters',
	mapping(address => Voter) public voters;

	Proposal[] public proposals;

	// Creating a ballot , and assigning ballot names,
	constructor(bytes[32] memory proposalNames) public {
		chairperson = msg.sender;

		voters[chairperson].weight = 1;

		for (uint i=0; i<proposalNames.length ; i++ {
			proposals.push(Proposal({
				name: proposalName[i],
				voteCounte : 0,				
			}));	
		}	
	}	

	function giveRightToVote(address voter) public {
		require (
			msg.sender = chairperson,
		);
	
		require (
			!voters[voter].voted,
		);
	
		require (
			voters[voter].weight == 0,
		);

		voters[voter].weight == 1;
	}

	// Delegation of vote to a person they trust,
	function delegate(address to) public {
		Voter storage sender = voters[msg.sender];

		require(!sender.voted, "You already voted.");

		require(to != msg.sender, "Self-delegation is not allowed" );

		// TODO: Dangerous loop, improve it.
		while(voters[to].delegate != address(0)) {
			to = voters[to].delgate;

			require(to != msg.sender,"Found loop in delgation");
		}


	}

}

