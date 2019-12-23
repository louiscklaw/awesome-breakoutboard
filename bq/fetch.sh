#!/usr/bin/env sh

git submodule add --depth=1 https://github.com/bq/zum.git bq/zum

python3 _utils/shallow_submodule.py