# Linux and BASH command
* Interacting with virtual machines- no graphical interface therefore need to use commands to navigate and interact
# base level
* The physical hardware
# kernel level
* Kernel - core of Os- how the machine works and does what we want it to do - generally will 
* Login security-
# user mode
* Shell (command line) can give it commands to talk to and interact with OS
# gui
* Guided user interface
* graphics mouse etc



* `uname` system info - gives name of kernel - needs a flag
* flag is put after linux command to give it more specific instructions, e.g `-y`
* `-a` flag for all- gives us all the info from the comman
* `--all` is the long version, needs 2 --
* So for `uname` -> `uname -a`
* `uanme -s` gives kernel name
* `uname -r` gives the release/version
* `uname -m` hardware name
* `uname -i` hardware platform
* `uname -o` OS
* `uname -r` architecture of processor
* can combine flags:
`unamme -si` gives kernel name and hardware platform

## Navigation
* `cd` to begin changing folder , followed by folder name, or `cd ..` to go back a folder
* `ls` lists current directory contents
* `cd ../../` goes back 2 levels
* `cd /` goes back to root directory
* `cd ~` goes back to root directory -> takes you to your home dir, by default root and home are the same
* `ls -l` (l stands for long format) lsit files and permissions on those files and folders

* Absolute path - from root directory
* Relative path- from current dir
* Linux/Mac absolute path -> /users/username/Documents/myfile.tx/etc...
* Windows absolute path -> C:\users\username\Documents\myfile.txt/etc..
* Web URLS absolute path -> https://www.mysite.com/myfolder/subfolder/sub/sub2/page1.html
* Relative path example folder1/folder2/folder3/etc...
## Creating files and folders
* `touch <filename.extension` > makes and empty file
* `nano myfile.txt` creates and opens the file editor
* can use `nano filename` to edit a file if it is in the same directory
* within `nano` can write but cant use mouse to navigate
* `CTRL + x` to exit , then `y` then `ENTER`
* `cat filename` views contents in terminal
* `mkdir new_folder` to make a folder
* to have spaces in folder name, `mkdir "folder with spaces" - add double qoutes around the folder name
## Copy files 
* `cp <name of file to be copied> <name of new file>`
* Can specify directory to copy into ` cp file dir_name/newfile`
## Copy folder
* `cp -rf name_of_folder_to_copy_ new_folder (recursive force - copy everything in the folder, not just the folder, including subfolders, force means do it even if the folder is locked)
* `rsync -r base_sync_folder folder_to_be_synced` - creates the base folder with its content in the folder to be synced with the base folders content
# Mooving files
* `mv file_to_move folder_name`
* `mv file_to_move ../../../ folder_name` to move file into a deeper folder -> goes backwards
* `mv` can be used to rename files `mv file new_file_name`

## Deleting files
* `rm file_name` for removing - **THERE IS NO CHECK**
* `rm -rf folder_name` for removing folder and all contents (recursive- deletes all contents, force- even if permission needed or a file from that folder is open)
* `rm -rf` **THIS WILL DELETE EVERYTHING DO NOT DO IT**
* `pwd` prints working directory
* can do `command --help` to get a breakdown of everything a command does
* `man ls` takes to a screen with all terminal commands / flags - press q to quit
* `man -k keyword` will bring up documentation with specified key word
`grep word specific_file` search for the word in in file
`grep word *` search for the word within the whole directory
`grep word * -R` recursive search. search the whole folder and the folders within the folders

## Wild cards
* Specify
* `ls f*` -> shows all files with ls, but only ones that have f in the name can specify any word/ character, not just f
* 



