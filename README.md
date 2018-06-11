# Typing in a Dark Room

Welcome to Typing in a Dark Room, a typing exercise disguised as a role-playing game!

## How to Play

To open the game, all you need to do is run it through Processing, no need to import anything or to prepare anything beforehand.

The game opens you up in a world map, which you can traverse with either WASD or arrow keys. 
In order to actually play the game, you must hit ENTER on a particular tile. This will start a battle.

Depending on the type of square you're on, the enemy you may or may not fight will have varying difficulty:

Plain 'ol '.' tiles don't add any difficulty.
The 'H' square increases the difficulty by one.
The 'T' square increases the difficulty by two.
The 'L' square increases the difficulty by three.
The 'S' and 'O' squares are places you can go to heal up.
The '\*' square gives you free EXP when you interact with it.

## Battling

As stated above, this game is a typing exercise. 
This means you have to type in the provided string correctly to attack.
If you type in the wrong string, then you have to go back and correct your mistake.
**Make sure you click into the BattleWindow before you start typing**

## Stats

There are three stats in the game: ATK, DEF, and SPD. 
ATK determines the damage dealt per attack.
DEF reduces the damage receives by an attack.
SPD for the player reduces the amount of characters in the provided string.
SPD for the enemy reduces the amount of ticks before they attack, and also increases the amount ot characters in the provided string, to a lesser extent.

## List of Features

- Navigable world map with scrolling
- User input (both text and keybinds)
- Multiple windows for viewing pleasure
- Reading in csv file data