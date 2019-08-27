#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:55797036:8d90f6b04912d65981dfd97e556e3cdbc68ea404; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:51741992:cd47b92997ed833c67db0970d4dcad8344a3f1c6 EMMC:/dev/block/bootdevice/by-name/recovery 8d90f6b04912d65981dfd97e556e3cdbc68ea404 55797036 cd47b92997ed833c67db0970d4dcad8344a3f1c6:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
