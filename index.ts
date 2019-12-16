import { LoadLua } from "./src/LoadLua";
import { SaveLua } from "./src/SaveLua";
import { TranspileTsToLua } from "./src/TranspileTsToLua";


const environment = process.env;

if (environment[2] === 'load') {
    // load lua files from map file
    const loadLua = new LoadLua();
} else if (environment[2] === 'save') {
    // save lua code into map file
    const saveLua = new SaveLua();
} else if (environment[2] === 'transpile') {
    // transpile ts code to lua code
    const transpileTsToLua = new TranspileTsToLua();
}
