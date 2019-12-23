#!/usr/bin/env sh

git submodule add --depth=1 https://github.com/iotmakervn/esp32-cellular-shield iotmakervn/esp32-cellular-shield
git submodule add --depth=1 https://github.com/iotmakervn/esp32-connectivity-shield iotmakervn/esp32-connectivity-shield
git submodule add --depth=1 https://github.com/iotmakervn/gsm-iot-core-hw iotmakervn/gsm-iot-core-hw
git submodule add --depth=1 https://github.com/iotmakervn/iot-gprs-wifi-uno-hw iotmakervn/iot-gprs-wifi-uno-hw
git submodule add --depth=1 https://github.com/iotmakervn/iot-wifi-uno-hw iotmakervn/iot-wifi-uno-hw
git submodule add --depth=1 https://github.com/iotmakervn/iotmaker-unox iotmakervn/iotmaker-unox
git submodule add --depth=1 https://github.com/iotmakervn/VM-sensor-PT1000 iotmakervn/VM-sensor-PT1000

python3 _utils/shallow_submodule.py