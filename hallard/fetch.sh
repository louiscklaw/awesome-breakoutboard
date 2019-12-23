#!/usr/bin/env sh

git submodule add --depth=1 https://github.com/hallard/LoRasPI.git hallard/LoRasPI
git submodule add --depth=1 https://github.com/hallard/NodeMCU-Gateway.git hallard/NodeMCU-Gateway
git submodule add --depth=1 https://github.com/hallard/Particle-Gateway.git hallard/Particle-Gateway
git submodule add --depth=1 https://github.com/hallard/RM1xx-Breakout.git hallard/RM1xx-Breakout
git submodule add --depth=1 https://github.com/hallard/WeMos-Lora.git hallard/WeMos-Lora
git submodule add --depth=1 https://github.com/hallard/WeMos-Matrix-Shield.git hallard/WeMos-Matrix-Shield
git submodule add --depth=1 https://github.com/hallard/WeMos-RN2483.git hallard/WeMos-RN2483
git submodule add --depth=1 https://github.com/hallard/WeMos-shield.git hallard/WeMos-shield


python3 _utils/shallow_submodule.py