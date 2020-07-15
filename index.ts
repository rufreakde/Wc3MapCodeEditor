import { Load } from "./src/LoadLua";
import { Save } from "./src/SaveLua";
import { QuickStart } from "./src/QuickstartMap";
import path from 'path';
import { start } from "repl";

/*
SETTINGS override with your settings
*/
const mapName = 'lua.w3m'; // name of your file you are working on (dropped into map folder)
const warcraftFolderPath = path.resolve('/SoftwarePrivate/Games/Warcraft III/x86_64'); // your path to your warcraft install

/*
DO NOT TOUCH - only if you do not know what you are doing ofc ;)
*/
const absolutePathToWar3_exe = '"' + path.resolve(warcraftFolderPath, 'Warcraft III.exe') + '"'; //spaces need to have a "soround" on windows
const abolutePathToEditor_exe = '"' + path.resolve(warcraftFolderPath, 'World Editor.exe') + '"';
const environment = process.env;
const pathToMapFile = '"' + path.resolve('.', 'src', 'map', mapName) + '"';
const pathToExportFolder = '"' + path.resolve('.', 'src', 'lua') + '"';

if (environment.LOAD_MAP === 'true') {
    Load(pathToMapFile, pathToExportFolder);
} else if (environment.SAVE_MAP === 'true') {
    Save(pathToMapFile, pathToExportFolder);
} else if (environment.START_MAP_GAME === 'true') {
    QuickStart(pathToMapFile, absolutePathToWar3_exe);
} else if (environment.START_MAP_EDITOR === 'true') {
    QuickStart(pathToMapFile, abolutePathToEditor_exe);
}
