#!/usr/bin/env sh

git submodule add --depth=1 https://github.com/LilyGO/TTGO-T7-Demo.git LilyGO/TTGO-T7-Demo


python3 _utils/shallow_submodule.py

git add .gitmodules
