import { assert } from "chai";
import { dupEncoder, dupEncoder2ElectricBoogaloo } from "../Katas/duplicateEncoder";

describe("dupEncoder", function () {
    it("test", function () {
        assert.strictEqual(dupEncoder("din"), "(((");
        assert.strictEqual(dupEncoder("recede"), "()()()");
        assert.strictEqual(
            dupEncoder("Success"),
            ")())())",
            "should ignore case"
        );
        assert.strictEqual(dupEncoder("(( @"), "))((");
    });
});

describe("dupEncoder refactored", function () {
    it("test", function () {
        assert.strictEqual(dupEncoder2ElectricBoogaloo("din"), "(((");
        assert.strictEqual(dupEncoder2ElectricBoogaloo("recede"), "()()()");
        assert.strictEqual(
            dupEncoder2ElectricBoogaloo("Success"),
            ")())())",
            "should ignore case"
        );
        assert.strictEqual(dupEncoder2ElectricBoogaloo("(( @"), "))((");
    });
});