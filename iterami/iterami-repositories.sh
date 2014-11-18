#!/bin/sh

# Required arguments:
#   $1: Relative path to the folder in which the
#         iterami repositories are/will_be stored.
#
# Example: sh iterami-repositories.sh iterami_repositories/

# Check if at least 1 argument was passed.
if [ $# -lt 1 ]
then
    echo 'Missing argument.'
    exit 2
fi

# Navigate to the target folder name
#   and create it if it doesn't exist.
mkdir -p $1
cd $1

# An array of all iterami repositories.
repositories='
Aquarium-2D.htm
ArcaneSanctuary.htm
Archive
ArtEditor.htm
AutomationScripts
BaseConverter.htm
Blog.php
Calculator.htm
Callipepla
Click.htm
Clock.htm
ColorDrops.htm
ColorSelector.htm
ColorSquares.htm
ColorSteps.htm
ColorWaves.htm
ContactForm.php
Countdown.htm
D2LoD-Builds
D2LoD-RuneCalculator.htm
DrinkingGames
Dropdown.htm
Drupal-Components
Drupal-.infoGenerator.htm
Engine.htm
eog-Plugin-MenuEnhancer
ExperienceCalculator.htm
FractalRunner-2D3D.htm
Functions.php
gedit-Plugin-MenuEnhancer
GetIP.php
GitHub-API.htm
GNOME-PluginTemplates
Guess.htm
Hallway-2D3D.htm
Hrad.htm
InterestCalculator.htm
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
Rain-2D.htm
ReactionTest.htm
RNG.htm
RockPaperScissors.htm
RS-CombatLevel.htm
RS-LevelCompare.htm
RTS-2D.htm
RTS-Boxing.htm
Shooter-2D.htm
Slots.htm
Snakish.htm
SnowyMountains.htm
SolarSystem-2D.htm
SpeedButton.htm
SpeedShape.htm
SpeedText.htm
SpeedType.htm
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
Trains-2D.htm
Tubes-2D3D.htm
UnitConverter.htm
UniverseConstructor.htm
Warped.htm
WindowInfo.htm
WoW-Macros
'

# Pull updates for cloned iterami repositories
#   or clone them if they haven't been cloned yet.
for repository in $repositories
do
    if [ -d $repository ]
    then
        echo 'pulling https://github.com/iterami/'$repository
        cd $repository
        git pull
        cd ..

    else
        git clone https://github.com/iterami/$repository.git
    fi

    echo
done
