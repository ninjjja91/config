#!/bin/bash

DIR=$HOME/.oh-my-zsh
if [ -d "$DIR" ]
then
  # Take action if $DIR exists. #
  echo "Oh-my-zsh directory found"
  echo "You want to delete a directory"
  read -r -p "Are you sure? [y/N] " response
  if [[ $response == "y" || $response == "Y" || $response == "yes" || $response == "Yes" ]]
  then
	  rm -Rf $DIR && git clone sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  elif [[ $response == "n" || $response == "N" || $response == "No" || $response == "No" ]]
  then 
    echo "BYE"
    exit
  else 
    echo "FUCK YOU BITCH"
  exit
  fi
fi
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && exit 

git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

