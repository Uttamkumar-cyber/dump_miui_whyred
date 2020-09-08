#!/usr/bin/bash

empty=(
vendor/bt_firmware
vendor/etc/configstore
vendor/dsp
vendor/firmware_mnt
vendor/lib/dsp
vendor/lost+found
)

for x in ${empty[@]}; do
echo $x
sudo mkdir -p $x
sudo chmod 755 $x
sudo chown 0:2000 $x
done
