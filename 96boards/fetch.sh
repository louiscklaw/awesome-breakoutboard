#!/usr/bin/env sh

git submodule add --depth=1 https://github.com/96boards/documentation.git 96boards/documentation

python3 _utils/shallow_submodule.py