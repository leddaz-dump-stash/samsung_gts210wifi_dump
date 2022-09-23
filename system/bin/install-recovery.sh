#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/15540000.dwmmc0/by-name/RECOVERY:12306432:5695a486ba1c2a1d5e0f1663b78b46fda4bfbfdc; then
  applypatch EMMC:/dev/block/platform/15540000.dwmmc0/by-name/BOOT:10153984:de7068962511566b0eaabbdc55d1affc0644b809 EMMC:/dev/block/platform/15540000.dwmmc0/by-name/RECOVERY 5695a486ba1c2a1d5e0f1663b78b46fda4bfbfdc 12306432 de7068962511566b0eaabbdc55d1affc0644b809:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
