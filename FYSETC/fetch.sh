#!/usr/bin/env sh

git submodule add --depth=1 https://github.com/FYSETC/FYSETC-S6.git  FYSETC/FYSETC-S6
git submodule add --depth=1 https://github.com/FYSETC/F6.git  FYSETC/F6
git submodule add --depth=1 https://github.com/FYSETC/Generic-12864-panel.git  FYSETC/Generic-12864-panel
git submodule add --depth=1 https://github.com/FYSETC/Cheetah.git  FYSETC/Cheetah
git submodule add --depth=1 https://github.com/FYSETC/AIO_II.git  FYSETC/AIO_II

python3 _utils/shallow_submodule.py