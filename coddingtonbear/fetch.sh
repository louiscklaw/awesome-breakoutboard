#!/usr/bin/env sh

git submodule add --depth=1 https://github.com/coddingtonbear/kicad-castellated-breakouts.git coddingtonbear/kicad-castellated-breakouts

python3 _utils/shallow_submodule.py