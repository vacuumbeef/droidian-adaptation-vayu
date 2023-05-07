# Droidian Adaptation for the Xiaomi Poco X3 Pro(vayu)
# Flashing based on: https://github.com/droidian-releng/android-recovery-flashing-template

# Contains fixes for:
# 1. Brightness
# 2. Bluetooth
# 3. Scaling

# https://droidian.org

OUTFD=/proc/self/fd/$1;
VENDOR_DEVICE_PROP=`grep ro.product.vendor.device /vendor/build.prop | cut -d "=" -f 2 | awk '{print tolower($0)}'`;

# ui_print <text>
ui_print() { echo -e "ui_print $1\nui_print" > $OUTFD; }

mkdir /r;

# mount droidian rootfs
mount /data/rootfs.img /r;

# Copy files
ui_print "Copying device adaptation files...";
cp -r droidian/* /r/;
ui_print "Copying vendor image";
cp -r data/* /r/var/lib/lxc/android/;
ui_print "Copying firmware images";
mkdir /r/var/lib/lxc/android/firmware;
cp -r firmware/* /r/var/lib/lxc/android/firmware/;
chmod 755 /r/usr/local/sbin/mount-android-extra.sh;
chroot /r /usr/bin/systemctl enable android-mount-extra.service;


# Do "chmod a+c /etc/rc.local" for first boot
chroot /r /bin/bash /local/bin/recovery-script.sh


# umount rootfs
umount /r;

# flash boot.img
flash_image /dev/block/bootdevice/by-name/boot boot.img
