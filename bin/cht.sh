#!/usr/bin/env bash

# TODO: make a cache thing

langs="js lua python java rust bash"
utils=" jq awk sed sort find"

selec=`printf "$langs $utils" | tr ' ' '\n' | sort -r | fzf --preview "curl cht.sh/{} -s"`

if echo $langs | grep -q "$selec"; then
  printf 'Lang query: '
  read query
  curl cht.sh/$selec/`echo $query | tr ' ' '+'` -s | less -r
else
  curl cht.sh/$selec | less -r
fi
