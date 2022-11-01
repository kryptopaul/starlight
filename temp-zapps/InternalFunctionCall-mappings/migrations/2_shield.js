const fs = require("fs");

const Pairing = artifacts.require("Pairing");
const Verifier = artifacts.require("Verifier");

const MyContractShield = artifacts.require("MyContractShield");
const functionNames = ["incr", "decr", "joinCommitments"];
const vkInput = [];
functionNames.forEach((name) => {
	const vkJson = JSON.parse(
		fs.readFileSync(`/app/orchestration/common/db/${name}_vk.key`, "utf-8")
	);
	const vk = Object.values(vkJson).flat(Infinity);
	vkInput.push(vk);
});

module.exports = (deployer) => {
	deployer.then(async () => {
		await deployer.deploy(Pairing);
		await deployer.link(Pairing, Verifier);
		await deployer.deploy(Verifier);

		await deployer.deploy(MyContractShield, Verifier.address, vkInput);
	});
};
