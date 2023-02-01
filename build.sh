#!/usr/bin/env bash

set -ex

cp config/Configuration.h ../Marlin/Marlin/Configuration.h
cp config/Configuration_adv.h ../Marlin/Marlin/Configuration_adv.h

pushd ../Marlin
pio run
cp .pio/build/STM32G0B1RE_btt/firmware.bin /Volumes/NO\ NAME/firmware.bin && echo 'Copied to SD Card'
diskutil unmount /Volumes/NO\ NAME
popd 
