import "../stylesheets/app.css";

// Import libraries we need.
import { default as Web3} from 'web3';
import { default as contract } from 'truffle-contract'

import voting_artifacts from '../../build/contracts/Voting.json'

var Voting = contract(voting_artifacts);

var candidates = {};

var tokenPrice = null;

window.App = {
 start: function() {
  var self = this;

  // Bootstrap the MetaCoin abstraction for Use.
  Voting.setProvider(web3.currentProvider);
  self.populateCandidates();
 },

 populateCandidates: function() {
  var self = this;
   
  Voting.deployed().then(function(contractInstance) {
   contractInstance.allCandidates.call().then(function(candidateArray) {
    for(let i=0; i < candidateArray.length; i++) {
     /* We store the candidate names as bytes32 on the blockchain. We use the
      * handy toUtf8 method to convert from bytes32 to string
      */
     candidates[web3.toUtf8(candidateArray[i])] = "candidate-" + i;
    }
    self.setupCandidateRows();
   });
  });
 },

 setupCandidateRows: function() {
  Object.keys(candidates).forEach(function (candidate) { 
   $("#candidate-rows").append("<tr><td>" + candidate + "</td><td id='" + candidates[candidate] + "'></td></tr>");
  });
 },


};

window.addEventListener('load', function() {
 // Checking if Web3 has been injected by the browser (Mist/MetaMask)
 if (typeof web3 !== 'undefined') {
  console.warn("Using web3 detected from external source. If you find that your accounts don't appear or you have 0 MetaCoin, ensure you've configured that source properly. If using MetaMask, see the following link. Feel free to delete this warning. :) http://truffleframework.com/tutorials/truffle-and-metamask")
  // Use Mist/MetaMask's provider
  window.web3 = new Web3(web3.currentProvider);
 } else {
  console.warn("No web3 detected. Falling back to http://127.0.0.1:9545. You should remove this fallback when you deploy live, as it's inherently insecure. Consider switching to Metamask for development. More info here: http://truffleframework.com/tutorials/truffle-and-metamask");
  // fallback - use your fallback strategy (local node / hosted node + in-dapp id mgmt / fail)
  window.web3 = new Web3(new Web3.providers.HttpProvider("http://127.0.0.1:8545"));
 }

 App.start();
});

