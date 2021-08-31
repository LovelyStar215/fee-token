const FeeToken = artifacts.require("FeeToken");

module.exports = function (deployer) {
  deployer.deploy(FeeToken);
};
