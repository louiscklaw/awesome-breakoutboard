#!/usr/bin/env sh

git submodule add --depth=1 https://github.com/etimou/arduino-pro-mini-kicad.git etimou/arduino-pro-mini-kicad

python3 _utils/shallow_submodule.py