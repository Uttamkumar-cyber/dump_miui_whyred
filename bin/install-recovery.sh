#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:34383182:21811c7e9bf11e930b352925dc3921df4092b564; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:27743562:687981dad9661eeab38594ba6746ab770ff85a58 EMMC:/dev/block/bootdevice/by-name/recovery 21811c7e9bf11e930b352925dc3921df4092b564 34383182 687981dad9661eeab38594ba6746ab770ff85a58:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
