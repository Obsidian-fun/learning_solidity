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

				address public 







