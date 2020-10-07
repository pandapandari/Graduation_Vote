web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"))
var account;

abi = JSON.parse('[{"constant":true,"inputs":[{"name":"candidate","type":"bytes32"}],"name":"validCandidate","outputs":[{"name":"","type":"bool"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"","type":"bytes32"}],"name":"votesReceived","outputs":[{"name":"","type":"uint8"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"","type":"uint256"}],"name":"candidateList","outputs":[{"name":"","type":"bytes32"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"candidate","type":"bytes32"}],"name":"voteForCandidate","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[{"name":"candidate","type":"bytes32"}],"name":"totalvotesFor","outputs":[{"name":"","type":"uint8"}],"payable":false,"stateMutability":"view","type":"function"},{"inputs":[{"name":"_candidateNames","type":"bytes32[]"}],"payable":false,"stateMutability":"nonpayable","type":"constructor"}]')

VotingContract = web3.eth.contract(abi);

contractInstance = VotingContract.at('0xd018a15d1359d6e65e7e9f41f887d513311bdd60');

candidates = {"Rama": "candidate-1", "Nick": "candidate-2", "Jose": "candidate-3"}

 

function voteForCandidate(candidate) {

 candidateName = $("#candidate").val();

 try {

  contractInstance.voteForCandidate(candidateName, {from: web3.eth.accounts[0]}, function() {

   let div_id = candidates[candidateName];

   $("#"+div_id).html(contractInstance.totalvotesFor.call(candidateName).toString());

  });

 } catch (err) {

 }

}

 

$(document).ready(function() {

 candidateNames = Object.keys(candidates);

 for (var i = 0; i < candidateNames.length; i++) {

  let name = candidateNames[i];

  let val = contractInstance.totalvotesFor.call(name).toString()

  $("#"+candidates[name]).html(val);

 }

});
