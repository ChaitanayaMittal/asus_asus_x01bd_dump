#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:55797036:ad87727dcb040297b63f6b24565a06992ef7ccd2; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:51741992:beae6b87c5fcd704fe10aeca3757318d102b3f6a EMMC:/dev/block/bootdevice/by-name/recovery ad87727dcb040297b63f6b24565a06992ef7ccd2 55797036 beae6b87c5fcd704fe10aeca3757318d102b3f6a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
