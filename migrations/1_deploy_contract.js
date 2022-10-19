var Postman= artifacts.require("./postman.sol")
//Artifacts are simply the JSON files of the contracts. the meaning of artifact in software is anything that is created so a piece of software can be developed.

module.exports= function(deployer){
    //Postman is name of contract and 1 is the index of account
    let n=1
    deployer.deploy(Postman,{from:arguments[2][n]})
}