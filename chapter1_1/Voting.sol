pragma solidity >= 0.4.23;

 

contract Voting{

    

    bytes32[] public candidateList;

    mapping(bytes32 => uint8) public votesReceived;

    constructor(bytes32[] memory _candidateNames)public{

        candidateList = _candidateNames;

    }

    

    function voteForCandidate(bytes32 candidate) public{

        require(validCandidate(candidate));

        votesReceived[candidate] += 1;

    }

    

    function totalvotesFor(bytes32 candidate) view public returns(uint8){

                require(validCandidate(candidate));

        return votesReceived[candidate];

    }

    

    function validCandidate(bytes32 candidate) view public returns(bool){

        for(uint i = 0; i < candidateList.length; i++){

            if(candidateList[i] == candidate){

                return true;

            }

        }

        return false;

    }

}
