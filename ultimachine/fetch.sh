#!/usr/bin/env sh

# git submodule add --depth=1 https://github.com/ultimachine/EinsyRetro.git  ultimachine/EinsyRetro
git submodule add --depth=1 https://github.com/ultimachine/Tigershark3D.git  ultimachine/Tigershark3D

python3 _utils/shallow_submodule.py