echo Installing xrdp - this install does not work perfectly and can require rebooting before RPDing
echo and when RDPing is missing the Ununtu theme.
echo '  Press CTRL + C to cancel'
sleep 20

sudo apt install xrdp
sudo systemctl enable xrdp

echo To RDP from Windows, you will need to logout and maybe reboot.
echo RDP from Windows needs to be the only terminal client.
echo From Windows: run mstsc using the ip address of this machine.

