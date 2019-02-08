#!/bin/bash
set -e

vim +PluginInstall +qall
./bundle/YouCompleteMe/install.py
