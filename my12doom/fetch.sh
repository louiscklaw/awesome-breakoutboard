#!/usr/bin/env sh

git submodule add --depth=1 https://github.com/my12doom/Hardware.git Hardware

cd ..
python3 _utils/shallow_submodule.py