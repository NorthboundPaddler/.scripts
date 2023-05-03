# .scripts
This repo is a simple collection of bash scripts to do simple actions in the command line. For example:
- Capture fleeting journal notes
- Show batery status and capacity remaining

## Installation
You can just git-clone this repo, and note down the path. The examples below have this repo cloned into a users home directory (~). 
``
cd ~
git clone https://github.com/NorthboundPaddler/.scripts.git
``

**Note:** This repo is set up for running in a bash shell, no guarantees about any other shells like Fish or ZSH. 

## Customization
Modify your timezone and prompt format by editing the `autojournal.sh` file itself. You can re-test your edits in real time since it's just a shell script. 

In addition, you can set the output file location for each journal entry. By default, this is setup to append to `~/journal.md`.

## Usage
You will probably want to set an alias in your `.bashrc` file for easy usage. Add the following lines to your `.bashrc` and tweak them to your liking:
``
alias j="source ~/.scripts/autojournal.sh"
alias jp="tail ~/journal.md -n 5"
``

### autojournal
These aliases allow you to use `j` and `jp` in your terminal to both add and view recent journal entries

You can call the command with no arguments, and a prompt will appear for you to enter your input text. Also, you can supply a string within double-quotes after the call of the shell script to utilize an inline input. For example: `j "foobar"`.

### batterystats
This alias prints out a color coded state of battery charge and remaining capacity
```
alias bs="source ~/.scripts/batterystats.sh"
```

## Motivation
This is for those who are working on a new Linux install and are really bad about documenting what's been done. Hopefully this creates less friction to writing *some* notes. 
