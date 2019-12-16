"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const LoadLua_1 = require("./src/LoadLua");
const SaveLua_1 = require("./src/SaveLua");
const TranspileTsToLua_1 = require("./src/TranspileTsToLua");
const environment = process.env;
if (environment[2] === 'load') {
    // load lua files from map file
    const loadLua = new LoadLua_1.LoadLua();
}
else if (environment[2] === 'save') {
    // save lua code into map file
    const saveLua = new SaveLua_1.SaveLua();
}
else if (environment[2] === 'transpile') {
    // transpile ts code to lua code
    const transpileTsToLua = new TranspileTsToLua_1.TranspileTsToLua();
}
//# sourceMappingURL=index.js.map