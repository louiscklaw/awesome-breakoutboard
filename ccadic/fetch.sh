#!/usr/bin/env sh

git submodule add --depth=1 https://github.com/ccadic/RaspberryPagernRF24.git ccadic/RaspberryPagernRF24
git submodule add --depth=1 https://github.com/ccadic/emergencypager.git ccadic/emergencypager
git submodule add --depth=1 https://github.com/ccadic/ATSAMD51G18A_VQFN48.git ccadic/ATSAMD51G18A_VQFN48
git submodule add --depth=1 https://github.com/ccadic/BlaspBerry.git ccadic/BlaspBerry
git submodule add --depth=1 https://github.com/ccadic/SnapOnAirDUO.git ccadic/SnapOnAirDUO
git submodule add --depth=1 https://github.com/ccadic/lorawanrpi0wshield.git ccadic/lorawanrpi0wshield
git submodule add --depth=1 https://github.com/ccadic/analogkeyboard.git ccadic/analogkeyboard
git submodule add --depth=1 https://github.com/ccadic/AzertyAnalogKB.git ccadic/AzertyAnalogKB
git submodule add --depth=1 https://github.com/ccadic/WaveShare42-Epaper.git ccadic/WaveShare42-Epaper
git submodule add --depth=1 https://github.com/ccadic/Kicad_PAD.git ccadic/Kicad_PAD
git submodule add --depth=1 https://github.com/ccadic/esp32dev-node.git ccadic/esp32dev-node
git submodule add --depth=1 https://github.com/ccadic/microusb_handsoldering_kicad.git ccadic/microusb_handsoldering_kicad
git submodule add --depth=1 https://github.com/ccadic/LoraWalkieTalkie.git ccadic/LoraWalkieTalkie
git submodule add --depth=1 https://github.com/ccadic/SnapOnAir_3GLORA.git ccadic/SnapOnAir_3GLORA
git submodule add --depth=1 https://github.com/ccadic/FeatherPager.git ccadic/FeatherPager
git submodule add --depth=1 https://github.com/ccadic/NES_ESP32.git ccadic/NES_ESP32
git submodule add --depth=1 https://github.com/ccadic/Snap_On_AIR_SMSPager_Bi.git ccadic/Snap_On_AIR_SMSPager_Bi
git submodule add --depth=1 https://github.com/ccadic/ESP32MINIMAL.git ccadic/ESP32MINIMAL
git submodule add --depth=1 https://github.com/ccadic/NanoPI_Duo2.git ccadic/NanoPI_Duo2
git submodule add --depth=1 https://github.com/ccadic/SnapOnAir-GSM-Lora.git ccadic/SnapOnAir-GSM-Lora
git submodule add --depth=1 https://github.com/ccadic/DUAL154IPS.git ccadic/DUAL154IPS
git submodule add --depth=1 https://github.com/ccadic/IPS_Bread.git ccadic/IPS_Bread
git submodule add --depth=1 https://github.com/ccadic/TTGO-ESP32-KICAD.git ccadic/TTGO-ESP32-KICAD
git submodule add --depth=1 https://github.com/ccadic/SnapOnAir_Discovery2.git ccadic/SnapOnAir_Discovery2
git submodule add --depth=1 https://github.com/ccadic/SnapOnAirMini_V3.git ccadic/SnapOnAirMini_V3

python3 _utils/shallow_submodule.py