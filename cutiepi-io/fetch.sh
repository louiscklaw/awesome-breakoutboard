#!/usr/bin/env sh

git submodule add --depth=1 https://github.com/cutiepi-io/cutiepi-board.git cutiepi-io/cutiepi-board

python3 _utils/shallow_submodule.py