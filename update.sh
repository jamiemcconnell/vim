#!/bin/bash
# Thanks Jess https://github.com/jessfraz/.vim
set -e

git submodule update --init --recursive
git submodule foreach git pull --recurse-submodules origin master
