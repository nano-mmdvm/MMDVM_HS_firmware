#first you need make pi-star to Read and Write.
#rpi-rw   

cd ~   

#Download flash script  
curl -OL https://raw.github.com/VR2VYE/fw_nanohs_for_rpi/master/install_fw_duplex.sh  

#make runable   
chmod +x install_fw_duplex.sh  

sudo pistar-watchdog.service stop; sudo systemctl stop mmdvmhost.timer; sudo systemctl stop mmdvmhost.service 
./install_fw_duplex.sh  
sudo pistar-watchdog.service start; sudo systemctl start mmdvmhost.timer; sudo systemctl start mmdvmhost.service
