#!/bin/bash

# bash script to open man pages on tmux
printf "Manpage: "
read manpage
man $manpage
