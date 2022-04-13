#!/bin/bash

cd 

DIR="$HOME/.wallpapers"

if [ -d "$DIR" ]
then
  # Take action if $DIR exists. #
  echo "Wallpapers directory found"
  echo "You want to delete a directory"
  read -r -p "Are you sure? [y/N] " response
  if [[ $response == "y" || $response == "Y" || $response == "yes" || $response == "Yes" ]]
  then
	  rm -Rf $DIR && git clone https://github.com/ninjjja91/wallpapers && mv wallpapers .wallpapers
  elif [[ $response == "n" || $response == "N" || $response == "No" || $response == "No" ]]
  then 
    echo "BYE"
    exit
  else 
    echo "FUCK YOU BITCH"
    exit
  fi
fi
git clone https://github.com/ninjjja91/wallpapers && mv wallpapers .wallpapers