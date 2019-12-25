#!/usr/bin/env sh

# git submodule add --depth=1 https://github.com/Aus3D/RUMBA32.git  Aus3D/RUMBA32
git submodule add --depth=1 https://github.com/pdp7/rotary-encoder-breakout.git  pdp7/rotary-encoder-breakout
git submodule add --depth=1 https://github.com/pdp7/oled-bmp280-touch.git  pdp7/oled-bmp280-touch
git submodule add --depth=1 https://github.com/pdp7/teensy-weather-badge.git  pdp7/teensy-weather-badge
git submodule add --depth=1 https://github.com/pdp7/memory-display.git  pdp7/memory-display
git submodule add --depth=1 https://github.com/pdp7/TeensyEpaperShield.git  pdp7/TeensyEpaperShield
git submodule add --depth=1 https://github.com/pdp7/teensy-wifi-weather-logger.git  pdp7/teensy-wifi-weather-logger
git submodule add --depth=1 https://github.com/pdp7/teensy-bare-oled.git  pdp7/teensy-bare-oled
git submodule add --depth=1 https://github.com/pdp7/mfnybborg.git  pdp7/mfnybborg
git submodule add --depth=1 https://github.com/pdp7/console-cape.git  pdp7/console-cape
git submodule add --depth=1 https://github.com/jareklupinski/epd215-library.git  jareklupinski/epd215-library
git submodule add --depth=1 https://github.com/pdp7/kicad-teensy-epaper.git  pdp7/kicad-teensy-epaper
git submodule add --depth=1 https://github.com/pdp7/ohs18addon.git  pdp7/ohs18addon

python3 _utils/shallow_submodule.py