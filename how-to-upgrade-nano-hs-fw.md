#FOR DIY to USE Nano hotSPOT

# 1st Way,use pistar-* upgrade tools,from pi-star 3.4.11
rpi-rw   
sudo pistar-zumspotflash nano_hs #3.4.10  
sudo pistar-nanohsflash nano_hs #3.4.11+  
When complete,need restart OS.  
 
If fail,try to use ST-LINK, or   
Fly line to shot GPIO15->BOOT, GPIO16->RST,then run upgrade command again   

![Image loading...](/images/Nano_hotSPOT_blueBOX_frimware_UpgradeGuide_EN.jpg)     
[View large Image](https://raw.githubusercontent.com/nano-mmdvm/MMDVM_HS_firmware/master/images/Nano_hotSPOT_blueBOX_frimware_UpgradeGuide_EN.jpg)   
 
# 2nd Way, use install script
This way not need rest OS,can use in hot plugin GIPO hotSPOT  
rpi-rw  
#this scrip if for v1.3.3,other version must be change number  
curl -OL https://github.com/juribeparada/MMDVM_HS/releases/download/v1.3.3/install_fw_nanohs.sh  
chmod +x install_fw_nanohs.sh  

## Stop MMDVMHost serice if necessary
rpi-rw    
sudo pistar-watchdog.service stop; sudo systemctl stop mmdvmhost.timer; sudo systemctl stop mmdvmhost.service  

## Flash to lastest version   
#./install_fw_nanohs.sh   
./onkeyflash_fw_nano.sh  

## Startup MMDVMHost service   
sudo pistar-watchdog.service start; sudo systemctl start mmdvmhost.timer; sudo systemctl start mmdvmhost.service    


## onekeyflash_fw_nano.sh  
NOTE: First run rpi-rw   
curl -OL https://raw.github.com/nano-mmdvm/MMDVM_HS_firmware/master/onekeyflash_fw_nano.sh  

 