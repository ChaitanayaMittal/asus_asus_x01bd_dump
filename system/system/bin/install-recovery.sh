#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:26230784:57f079fa42e87e43bfaa155aeb92f8c9633cfa3d; then
  applypatch --bonus /system/etc/recovery-resource.dat \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:17129472:c278103418f476d4112c4672d615d86fc1061e14 \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:26230784:57f079fa42e87e43bfaa155aeb92f8c9633cfa3d && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
