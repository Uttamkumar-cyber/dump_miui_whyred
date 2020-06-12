#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:34383182:963722f08aec291eabd35a7e19c143672555b55d; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:27743562:44d07a25893ac8bc35b366358ec130cf87e76622 EMMC:/dev/block/bootdevice/by-name/recovery 963722f08aec291eabd35a7e19c143672555b55d 34383182 44d07a25893ac8bc35b366358ec130cf87e76622:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
