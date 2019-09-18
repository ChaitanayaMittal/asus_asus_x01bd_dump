#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:55797036:392bea153a3faf0dc107820cbb3328c90ed23b68; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:51741992:7979dfaf6efee838b3acf036b908030844444c4f EMMC:/dev/block/bootdevice/by-name/recovery 392bea153a3faf0dc107820cbb3328c90ed23b68 55797036 7979dfaf6efee838b3acf036b908030844444c4f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
