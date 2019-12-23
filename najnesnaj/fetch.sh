#!/usr/bin/env sh

git submodule add --depth=1 https://github.com/najnesnaj/stm8-kicad-design-se8R01-pcb.git najnesnaj/stm8-kicad-design-se8R01-pcb

python3 _utils/shallow_submodule.py