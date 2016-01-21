# Developer Party Blocks

Creates SVG files appropriate for engraving on Jenga® blocks using Otherplan's Othermill CNC machine.

The current template assumes blocks will be engraved in batches of 4 (`75mm x 100mm`).

### Requirements

* Mac OS X or Linux
* [Inkscape](https://inkscape.org/en/)
* Inkscape Command-Line Utility
  * (to setup on Mac: `ln -s /Applications/Inkscape.app/Contents/Resources/bin/inkscape /usr/local/bin`)

Inkscape is required to convert the fonts into paths (Otherplan can't engrave fonts as of this writing).

### Building

* Edit any questions in the `questions` folder.
* Run the `make command`
* SVG files will be generated in the `build/` directory.

`make clean` will clean the generated files.
