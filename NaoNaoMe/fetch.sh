#!/usr/bin/env sh

git submodule add --depth=1 https://github.com/NaoNaoMe/Uart-WiFi-Board.git NaoNaoMe/Uart-WiFi-Board
git submodule add --depth=1 https://github.com/NaoNaoMe/CC-samd21g.git NaoNaoMe/CC-samd21g
git submodule add --depth=1 https://github.com/NaoNaoMe/CC-mega328.git NaoNaoMe/CC-mega328
git submodule add --depth=1 https://github.com/NaoNaoMe/General-Serial-Communication-Board.git NaoNaoMe/General-Serial-Communication-Board

python3 _utils/shallow_submodule.py