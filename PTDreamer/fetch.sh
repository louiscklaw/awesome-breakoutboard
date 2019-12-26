#!/usr/bin/env sh

git submodule add --depth=1 https://github.com/PTDreamer/stm32_soldering_iron_controller.git PTDreamer/stm32_soldering_iron_controller

git submodule add --depth=1 https://github.com/PTDreamer/heatgun.git PTDreamer/heatgun

python3 _utils/shallow_submodule.py