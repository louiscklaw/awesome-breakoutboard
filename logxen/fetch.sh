#!/usr/bin/env sh

git submodule add --depth=1 https://github.com/logxen/SPI_Thermocouple.git logxen/SPI_Thermocouple
git submodule add --depth=1 https://github.com/logxen/SPIEthernetWing.git logxen/SPIEthernetWing

python3 _utils/shallow_submodule.py