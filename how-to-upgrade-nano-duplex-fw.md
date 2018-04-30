# Upgrade Duplex hotSPOT firmware Raspberry Pi 3B or Pi ZERO   
*NOTE: Now 3.4.11 not support use pistar-* upgrade GPIO Type Duplex,maybe come soon
*source code from https://github.com/juribeparada/MMDVM_HS/releases

## Change system to Read and Write  
rpi-rw   
cd ~   

## Download flash script  
curl -OL https://raw.github.com/VR2VYE/fw_nanohs_for_rpi/master/install_fw_duplex.sh  

## make runable   
chmod +x install_fw_duplex.sh     

## Stop MMDVMHost serice if necessary  
sudo pistar-watchdog.service stop; sudo systemctl stop mmdvmhost.timer; sudo systemctl stop mmdvmhost.service  

## Flash to lastest version  
./install_fw_duplex.sh  

## Startup MMDVMHost service   
sudo pistar-watchdog.service start; sudo systemctl start mmdvmhost.timer; sudo systemctl start mmdvmhost.service    

## onekeyflash_fw_duplex.sh  
NOTE: First run rpi-rw   
curl -OL https://raw.githubusercontent.com/nano-mmdvm/MMDVM_HS_firmware/master/onekeyflash_fw_duplex.sh
chmod +x onekeyflash_fw_duplex.sh
./onekeyflash_fw_duplex.sh


![Image loading](/nano_duplex_cmd.png)   
[View large image](https://github.com/nano-mmdvm/MMDVM_HS_firmware/raw/master/images/nano_duplex_cmd.png)  

![Image loading](/nano_duplex_ui.png)      
[View large image](https://github.com/nano-mmdvm/MMDVM_HS_firmware/raw/master/images/nano_duplex_ui.png)   