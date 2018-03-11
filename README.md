Linux or macOS Download the script (*.sh) that matches with your ZUMspot/MMDVM_HS board:

脚本定义：
install_fw_duplex.sh :Adapted to the duplex board 双工板升级脚本
install_fw_nanohs_for_rpi.sh :Only adapted to nano_hotSPOT for raspberry pi Nano_hotSPOT升级脚本，仅能用于树莓派不能用于NanoPi

0. NanoPi升级固件
sudo pistar-zumspotflash nano_hs #3.4.10
sudo pistar-nanohsflash nano_hs #3.4.11+
如果失败，则尝试手工方式 ST-LINK 
或者跳线GPIO15->BOOT, GPIO16->RST 再执行以上命令

1. 在树莓派升级双工板固件
rpi-rw 设置为读写模式
cd ~
curl -OL https://raw.github.com/VR2VYE/fw_nanohs_for_rpi/master/install_fw_duplex.sh
chmod +x install_fw_duplex.sh
sh ./install_fw_duplex.sh

2. 在树莓派升级Nano_hotSPOT 热点板固件

cd ~
curl -OL https://raw.github.com/VR2VYE/fw_nanohs_for_rpi/master/install_fw_nanohs_for_rpi.sh

使用脚本可执行：
make the script executable:
chmod +x install_fw_nanohs_for_rpi.sh

停止MMDVMHost程序（可选）：
stop your MMDVMHost process and run (you will need the root password):

执行升级脚本：
./install_fw_nanohs_for_rpi.sh

等待升级完成
and wait to complete the upgrading process.

3. 在树莓派升级中继板固件
