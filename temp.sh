#!/usr/bin/env sh


git submodule add --depth=1 https://github.com/david-pzh/X-Bot.git david-pzh/X-Bot
git submodule add --depth=1 https://github.com/david-pzh/DoubiBot.git david-pzh/DoubiBot
git submodule add --depth=1 https://github.com/david-pzh/Roboard-Pro.git david-pzh/Roboard-Pro


python3 _utils/shallow_submodule.py

git add .gitmodules
