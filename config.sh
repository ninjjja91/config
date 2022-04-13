#!/bin/bash
cd $HOME

git clone https://github.com/ninjjja91/conf

cd conf

./debianpacks

cd $HOME

rm -Rf conf

rm -Rf config
