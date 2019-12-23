#!/usr/bin/env sh

git submodule add --depth=1 https://github.com/im-tomu/tomu-hardware im-tomu/tomu-hardware


python3 _utils/shallow_submodule.py