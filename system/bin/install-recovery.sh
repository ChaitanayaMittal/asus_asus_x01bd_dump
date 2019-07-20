#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:55797036:4b9ee1c4df03d27e12d1a00a37cf512408ae1fbe; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:51741992:c3a664a86faed41dfd48781a56af893004b27a7c EMMC:/dev/block/bootdevice/by-name/recovery 4b9ee1c4df03d27e12d1a00a37cf512408ae1fbe 55797036 c3a664a86faed41dfd48781a56af893004b27a7c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
