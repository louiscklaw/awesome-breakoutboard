#!/usr/bin/env sh

git submodule add --depth=1 https://github.com/Creality3DPrinting/CR10-Melzi-1.1.2.git Creality3DPrinting/CR10-Melzi-1.1.2
git submodule add --depth=1 https://github.com/Creality3DPrinting/Ender-3.git Creality3DPrinting/Ender-3
git submodule add --depth=1 https://github.com/Creality3DPrinting/CR-10.git Creality3DPrinting/CR-10

python3 _utils/shallow_submodule.py