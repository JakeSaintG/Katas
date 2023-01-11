import { maskify, maskify2ElectricBoogaloo } from "../Katas/cardMask";
import { assert } from "chai";

describe("maskify", function () {
    it("should work for some examples", function () {
        assert.strictEqual(maskify("4556364607935616"), "############5616");
        assert.strictEqual(maskify("1"), "1");
        assert.strictEqual(maskify("11111"), "#1111");
    });
});

describe("maskify refactored", function () {
  it("should work for some examples", function () {
      assert.strictEqual(maskify2ElectricBoogaloo("4556364607935616"), "############5616");
      assert.strictEqual(maskify2ElectricBoogaloo("1"), "1");
      assert.strictEqual(maskify2ElectricBoogaloo("11111"), "#1111");
  });
});