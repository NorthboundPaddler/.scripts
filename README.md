# autojournal
Simple bash script to capture fleeting notes from the CLI

## Installation
You can just git-clone this repo, and note down the path. The examples below have this repo cloned into a users home directory (~). 

**Note:** This script is set up for running in a bash shell, no guarantees about any other shells like Fish or ZSH. 

## Customization
Modify your timezone and prompt format by editing the `autojournal.sh` file itself. You can re-test your edits in real time since it's just a shell script. 

In addition, you can set the output file location for each journal entry. By default, this is setup to append to `~/journal.md`.

## Usage
You will probably want to set an alias in your `.bashrc` file for easy usage. Add the following lines to your `.bashrc` and tweak them to your liking:
``
alias j="source ~/autojournal/autojournal.sh"
alias jp="tail ~/journal.md -n 5
``

These aliases allow you to use `j` and `jp` in your terminal to both add and view recent journal entries

## Motivation
This is for those who are working on a new Linux install and are really bad about documenting what's been done. Hopefully this creates less friction to writing *some* notes. 
