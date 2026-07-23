"use strict";

const test = require("node:test");
const assert = require("assert");
const { add } = require("../src/math");

test("add returns the sum of two numbers", () => {
	assert.equal(add(2, 3), 5);
});

test("add rejects non-number arguments", () => {
	assert.throws(() => add("2", 3), TypeError);
});
