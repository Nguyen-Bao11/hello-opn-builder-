const { expect } = require("chai");

describe("HelloOPN", function () {

    it("Should deploy correctly", async function () {

        const Hello = await ethers.deployContract("HelloOPN");

        await Hello.waitForDeployment();

        expect(await Hello.message()).to.equal("Hello OPN Builder!");

    });

});
