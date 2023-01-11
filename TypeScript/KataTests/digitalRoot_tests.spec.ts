import { assert } from "chai";
import { digitalRoot, digitalRoot2ElectricBoogaloo } from "../Katas/digitalRoot";

describe("solution", () => {
    it("should work for fixed tests", () => {
        assert.equal(digitalRoot(16), 7);
        assert.equal(digitalRoot(456), 6);
    });
});

describe("refactored solution", () => {
    it("should work for fixed tests", () => {
        assert.equal(digitalRoot2ElectricBoogaloo(16), 7);
        assert.equal(digitalRoot2ElectricBoogaloo(456), 6);
    });
});