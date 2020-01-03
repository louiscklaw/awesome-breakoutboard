#!/usr/bin/env sh


git submodule add --depth=1 https://github.com/makerbase-mks/MKS-TB6600.git makerbase-mks/MKS-TB6600

python3 _utils/shallow_submodule.py

git add .gitmodules
