import { execFile } from 'child_process';
import { promisify } from 'util';
const execFilePromised = promisify(execFile);

export async function QuickStart(pathToMapFile: string, absolutePathToEXE: string) {
    await execFilePromised(absolutePathToEXE, ["-loadfile", pathToMapFile])
        .catch((error) => {
            console.error(`Error with CLI!\n${error}`);
        });
}