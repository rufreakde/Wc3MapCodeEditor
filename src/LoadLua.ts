import { commands, useMPQConsole as useConsole } from 'Wc3mapWorker';

export async function Load(pathToMapFile: string, pathToExportFolder: string) {
    const testCommands = new commands(pathToMapFile, pathToExportFolder, useConsole.useConsole);
    await testCommands.extractLuaFromMap(true)
        .catch((error) => {
            console.error(`Error with CLI!\n${error}`);
        });
}
