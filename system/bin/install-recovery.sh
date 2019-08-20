#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:55792940:1397b6db1cfb5bb9d18a643c507610016e5e0ff6; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:51737896:8733545f8ecbbfdc8d4f6eacfdc13d78ddcab08e EMMC:/dev/block/bootdevice/by-name/recovery 1397b6db1cfb5bb9d18a643c507610016e5e0ff6 55792940 8733545f8ecbbfdc8d4f6eacfdc13d78ddcab08e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
