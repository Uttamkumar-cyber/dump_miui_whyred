#!/usr/bin/bash

LOCALDIR=`cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd`
tools=${LOCALDIR}/tools
vendordir=${LOCALDIR}/vendor
output=${LOCALDIR}/temp/vendor.img
size=`du -sk $vendordir | awk '{$1*=1024;$1=int($1*1.05);printf $1}'`
tempdir=${LOCALDIR}/temp
make_ext4fs=$tools/make_ext4fs
fsconfig=${LOCALDIR}/config/vendor_fs_config
fcontexts=${LOCALDIR}/file_contexts

mk_image() {
mkdir $tempdir
echo "$fsconfig"
$tools/mkuserimg_mke2fs.sh -s "$vendordir" "$output" ext4 vendor $size -C $fsconfig $fcontexts -T 0  -L vendor
}

mk_zip() {
./tools/img2sdat.py $output -o flashable -v 4 -p vendor > /dev/null
cd flashable
../tools/brotli -7 vendor.new.dat
rm vendor.new.dat || exit 1
rm -rf ../MiUiVendor$(date +"%Y%m%d").zip
zip -rv9 ../MiUiVendor$(date +"%Y%m%d").zip *
cd ..
}

mk_image
mk_zip
rm -rf temp
