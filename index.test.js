const { helloWorld } = require("./index.js");

describe("suma", () => {
  it("suma que da 8", () => {
    expect(helloWorld(3, 4)).toEqual(7);
  });

  it("suma que da 8", () => {
    expect(helloWorld(4, 4)).toEqual(8);
  });
});
