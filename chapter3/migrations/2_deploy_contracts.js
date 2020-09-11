var Voting = artifacts.require("./Voting.sol");

module.exports = function(deployer) {
 deployer.deploy(Voting, 10000, web3.utils.toWei('0.01', 'ether'), ['Nick', 'Rama', 'Jose'].map(x => web3.utils.asciiToHex(x)));
};
