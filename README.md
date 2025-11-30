A 2D interactive canvas written in hack assembly (nand2tetris) made for
the completion of requirements of the course `CCS 225: Architecture and
Organization`.

# Running the Project

### A. Importing to NAND2Tetris
1. Clone this repository on your local machine or alternatively,
download the repository as a zip file and extract it.
2. In the [NAND2Tetris Assembler](https://nand2tetris.github.io/web-ide/asm)'s
source section, select `Load File -> Select local file`, then select `source.asm`
in your local repository.
3. Translate the file to `.hack` format then proceed to the CPU emulator.
4. Run the program with the speed slider set to the fastest speed.

### B. Simulating in VSCode
1. Install [Java Runtime Environment](https://www.java.com/en/download/manual.jsp)
(Java 8).
2. Install [NAND2Tetris Tools](https://marketplace.visualstudio.com/items?itemName=leafvmaple.nand2tetris)
by leafvmaple in the VSCode Marketplace.
3. Run `NAND2Tetris: Open Assembler Simulator` via the command palette
in VSCode.
4. Import and translate the `source.asm` file in the assembler and save
it as `source.hack`.
5. Run `NAND2Tetris: Open CPU Simulator` via the command palette in
VSCode.
6. Import and run the program in the CPU Simulator.