Linux or macOS Download the script (*.sh) that matches with your ZUMspot/MMDVM_HS board:  
 
## Definition：  
install_fw_duplex.sh :Adapted to the duplex board 
install_fw_nanohs_for_rpi.sh :Only adapted to nano_hotSPOT for raspberry pi,not for NanoPi NEO   
  
## Upgrade Duplex hotSPOT firmware Raspberry Pi 3B or Pi ZERO(EN)   
See https://github.com/nano-mmdvm/MMDVM_HS_firmware/master/how-to-upgrade-nano-duplex-fw.md  
  
 
## Upgrade Nano_hotSPOT firmware in NanoPi NEO
sudo pistar-zumspotflash nano_hs #3.4.10  
sudo pistar-nanohsflash nano_hs #3.4.11+  
If fail,try to use ST-LINK, or   
Fly line to shot GPIO15->BOOT, GPIO16->RST,then run upgrade command again    
    
## Upgrade Nano_hotSPOT firmware Raspberry Pi 3B or Pi ZERO  
rpi-rw    
cd ~    
curl -OL https://raw.github.com/VR2VYE/fw_nanohs_for_rpi/master/install_fw_nanohs_for_rpi.sh    
  
make the script executable:    
chmod +x install_fw_nanohs_for_rpi.sh    
  
Stop MMDVMHost Serive   
sudo pistar-watchdog.service stop; sudo systemctl stop mmdvmhost.timer; sudo systemctl stop mmdvmhost.service   
  
Run scirpt   
./install_fw_nanohs_for_rpi.sh    
   
Wait for complete 
   
## Upgrade Repeater Kit firmware in Raspberry Pi 3B or Pi ZERO   
https://github.com/VR2VYE/STM32_DVM_fw.git    
  
  
Building...   
   
