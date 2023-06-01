//  SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract error{

    address payable public owner = payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);

    mapping(address => bool) public votedOrNot;
    mapping(address => uint) votes;
    address[] public parties = [0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2,0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db];
    address public winner;

    function countVote(address _votedTo) internal {
        assert(_votedTo == parties[0] || _votedTo == parties[1]);
        votes[_votedTo] += 1;
    }

    function castVote(address voter,address votedTo) public {
        require(!votedOrNot[voter],"You have already voted!");
        votedOrNot[voter] = true;
        countVote(votedTo);
    }

    function findWinner(address _owner) public{
        if(owner != _owner){
            revert("Only Onwer can Retrieve the Winner!");
        }
        if(votes[parties[0]] == votes[parties[1]]){
            revert("It's a Tie!");
        }
        else if(votes[parties[0]] > votes[parties[1]]){
            winner = parties[0];
        }
        else{
            winner = parties[1];
        }
    } 
}