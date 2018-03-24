Linux or macOS Download the script (*.sh) that matches with your ZUMspot/MMDVM_HS board:  

#Upgrade nano 
 
## Definition：  
install_fw_duplex.sh :Adapted to the duplex board 
install_fw_nanohs_for_rpi.sh :Only adapted to nano_hotSPOT for raspberry pi,not for NanoPi NEO   
  
## Upgrade Duplex hotSPOT firmware Raspberry Pi 3B or Pi ZERO(EN)   
See https://github.com/nano-mmdvm/MMDVM_HS_firmware/blob/master/how-to-upgrade-nano-duplex-fw.md
  
 
## Upgrade Nano_hotSPOT firmware in NanoPi NEO
See https://github.com/nano-mmdvm/MMDVM_HS_firmware/blob/master/how-to-upgrade-nano-hs-fw.md    
    
   
## Upgrade Repeater Kit firmware in Raspberry Pi 3B or Pi ZERO   
See https://github.com/VR2VYE/STM32_DVM_fw.git    
  
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



# Other
## Flash nano hotSPOT firmware to v1.0.2
rpi-rw    
cd ~     
curl -OL https://raw.githubusercontent.com/nano-mmdvm/MMDVM_HS_firmware/master/onekeyflash_fw_nano_1.0.2.sh  
chmoe +x onekeyflash_fw_nano_1.0.2.sh  
./onekeyflash_fw_nano_1.0.2.sh  
   
## test show version number
tail -100f /var/log/pi-star/MMDVM-2018-03-24.log   
Building...   

by bi7jta@gmail.com  
facebook https://www.facebook.com/winters.cn  
   
