Linux or macOS Download the script (*.sh) that matches with your ZUMspot/MMDVM_HS board:  
 
###脚本定义：  
install_fw_duplex.sh :Adapted to the duplex board 双工板升级脚本  
install_fw_nanohs_for_rpi.sh :Only adapted to nano_hotSPOT for raspberry pi Nano_hotSPOT升级脚本，仅能用于树莓派不能用于NanoPi  
  
###NanoPi升级固件  
Upgrade Nano_hotSPOT firmware in NanoPi NEO
sudo pistar-zumspotflash nano_hs #3.4.10  
sudo pistar-nanohsflash nano_hs #3.4.11+  
如果失败，则尝试手工方式 ST-LINK   
或者跳线GPIO15->BOOT, GPIO16->RST 再执行以上命令  
  
###在树莓派3B或ZERO升级双工板固件 
Upgrade Duplex hotSPOT firmware Raspberry Pi 3B or Pi ZERO   
rpi-rw   
cd ~  
curl -OL https://raw.github.com/VR2VYE/fw_nanohs_for_rpi/master/install_fw_duplex.sh  
chmod +x install_fw_duplex.sh  
#Stop MMDVMHost serice if necessary
sudo pistar-watchdog.service stop; sudo systemctl stop mmdvmhost.timer; sudo systemctl stop mmdvmhost.service
./install_fw_duplex.sh  

![图片装载中](/nano_duplex_cmd.png)   
[点击查看大图](https://github.com/bi7jta/MMDVM_HS_firmware/raw/master/nano_duplex_cmd.png) 

Startup MMDVMHost service  
sudo pistar-watchdog.service start; sudo systemctl start mmdvmhost.timer; sudo systemctl start mmdvmhost.service  
![图片装载中](/nano_duplex_restart.png)   
[点击查看大图](https://github.com/bi7jta/MMDVM_HS_firmware/raw/master/nano_duplex_restart.png) 

![图片装载中](/nano_duplex_ui.png)     
[点击查看大图](https://github.com/bi7jta/MMDVM_HS_firmware/raw/master/nano_duplex_ui.png) 
  
###在树莓派升级Nano_hotSPOT 热点板固件  
Upgrade Nano_hotSPOT firmware Raspberry Pi 3B or Pi ZERO
rpi-rw  
cd ~  
curl -OL https://raw.github.com/VR2VYE/fw_nanohs_for_rpi/master/install_fw_nanohs_for_rpi.sh  
  
使用脚本可执行：  
make the script executable:  
chmod +x install_fw_nanohs_for_rpi.sh  
  
Stop MMDVMHost Serive（可选）：  
sudo pistar-watchdog.service stop; sudo systemctl stop mmdvmhost.timer; sudo systemctl stop mmdvmhost.service
  
执行升级脚本： 
Run scirpt 
./install_fw_nanohs_for_rpi.sh  
  
等待升级完成  
Wait for complete 
  
###在树莓派升级中继板固件  
Upgrade Repeater Kit firmware in Raspberry Pi 3B or Pi ZERO
See https://github.com/VR2VYE/MMDVM_man  

持续完善中。。。  
Building...

for English Coming...   
