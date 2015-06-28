#!/bin/sh

# Required arguments:
#   $1: Relative path to the directory in which the
#         iterami repositories are/will_be stored.
#
# Example: sh iterami-repositories.sh iterami_repositories/

# Check if at least 1 argument was passed.
if [ $# -lt 1 ]
then
    echo 'Missing argument.'
    exit 2
fi

# Navigate to the target directory name
#   and create it if it doesn't exist.
mkdir -p $1
cd $1

# An array of all iterami repositories.
repositories='
9YG0E6r.htm
Alarm.htm
Aquarium-2D.htm
ArcaneSanctuary.htm
Archive
ArtEditor.htm
AutomationScripts
Avoidance-2D.htm
BaseConverter.htm
Blog.php
Calculator.htm
Chrome-DarkTheme
Chrome-ExtensionTemplates
Chrome-YouTubeSimplifier
Click.htm
Clock.htm
ColorDrops.htm
ColorSelector.htm
ColorSquares.htm
ColorSteps.htm
ColorWaves.htm
ConfigFiles
ContactForm.php
Countdown.htm
D2LoD-Builds
D2LoD-RuneCalculator.htm
DrinkingGames
Dropdown.htm
Drupal-callipepla
Drupal-delete_ghost_fields
Drupal-integer_to_decimal
Drupal-Templates
Drupal-workflow_transitions_roles_fix
Duel.htm
EmojiText.htm
Empty
Engine.htm
Engine.htm-Projects
eog-Plugin-MenuEnhancer
ExperienceCalculator.htm
Fireworks-2D.htm
FractalRunner-2D3D.htm
Functions.php
gedit-Plugin-MenuEnhancer
GitHub-API.htm
GNOME-PluginTemplates
Guess.htm
Hallway-2D3D.htm
Hrad.htm
Info.php
InterestCalculator.htm
Inventory.php
IP.php
iterami.com
iterami.github.io
Jetpack-2D.htm
KeyInfo.htm
LayeredSnake-2D3D.htm
LocalStorage.htm
Match.htm
MC-ResourcePacks
Music.htm
OS
Particleball-2D.htm
ParticleRun-2D.htm
PasswordGenerator.htm
PixelEditor.htm
Platform-2D.htm
Platform-2D.sh
Plus.htm
Poem.htm
QjnyYap.htm
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
Standards
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
Trains-3D.htm
Tubes-2D3D.htm
U1.htm
UnitConverter.htm
UniverseConstructor.htm
Warped.htm
WebScraper.py
WebServer.py
Wiki.php
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

    else
        git clone https://github.com/iterami/$repository.git
        echo 'cloned https://github.com/iterami/'$repository
    fi

    cd ..

    echo
done
