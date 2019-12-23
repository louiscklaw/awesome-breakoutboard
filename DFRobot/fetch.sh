#!/usr/bin/env sh

git submodule add --depth=1 https://github.com/DFRobot/DFRobot_3V-Relay-Module DFRobot/DFRobot_3V-Relay-Module
git submodule add --depth=1 https://github.com/DFRobot/DS1307_RTC DFRobot/DS1307_RTC

python3 _utils/shallow_submodule.py