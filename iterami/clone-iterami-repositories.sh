#!/bin/sh

# Required arguments:
#   $1: Relative path to the folder in which the
#         cloned repository folders will be created.
#
# Example: sh clone-iterami-repositories.sh iterami_repositories/

# Navigate to the target folder name
#   and create it if it doesn't exist.
mkdir -p $1
cd $1

# An array of all iterami repositories.
repositories='
Aquarium-2D.htm
Archive
ArtEditor.htm
Automation-Scripts
BaseConverter.htm
Behat-DrupalSteps
Blog.php
Calculator.htm
Click.htm
ColorDrops.htm
ColorSelector.htm
ColorSquares.htm
ColorSteps.htm
ColorWaves.htm
ContactForm.php
Countdown.htm
D2LoD-Builds
D2LoD-RuneCalculator.htm
Dropdown.htm
Drupal-.infoGenerator
Engine.htm
eog-Plugin-MenuEnhancer
ExperienceCalculator.htm
FractalRunner-2D3D.htm
gedit-Plugin-MenuEnhancer
GetIP.php
GNOME-PluginTemplates
Guess.htm
Hallway-2d3D.htm
Hrad.htm
Inventory.php
iterami.github.io
iterami-SiteBackup
Jetpack.htm
KeyInfo.htm
LayeredSnake-2d3D.htm
Match.htm
MC-ResourcePacks
Music.htm
OS
Particleball.htm
PasswordGenerator.htm
PixelEditor.htm
Platform-2D.htm
Platform-2D.sh
Plus.htm
Poem.htm
Python-WebScraper
Python-WebServer
Rain.htm
ReactionTest.htm
RNG.htm
Rock-Paper-Scissors.htm
RS-CombatLevel.htm
RS-LevelCompare.htm
RTS-2D.htm
RTS-Boxing.htm
Shooter-2D.htm
Slots.htm
Snakish.htm
SnowyMountains.htm
SolarSystem-2D.htm
Speedbutton.htm
Speedshape.htm
Speedtext.htm
Speedtype.htm
Starfield-2D3D.htm
Sudoku.htm
TemplateEngine.php
TemplateEngine-Lite.php
Terminal-Mockup.htm
TerminalQuest.htm
TextEditor.htm
TextInfo.htm
TimeColors.htm
Timer.htm
Tubes-2D3D.htm
UnitConverter.htm
UniverseConstructor.htm
Warped.htm
WindowInfo.htm
'

# Clone each repository.
for repository in $repositories
do
    git clone https://github.com/iterami/$repository
done
