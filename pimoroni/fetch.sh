#!/usr/bin/env sh

git submodule add --depth=1 https://github.com/pimoroni/automation-hat.git pimoroni/automation-hat

python3 _utils/shallow_submodule.py