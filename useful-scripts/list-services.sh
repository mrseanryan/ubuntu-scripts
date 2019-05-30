# ubuntu uses multiple ways to manage services
#
# ref: https://unix.stackexchange.com/questions/220852/ubuntu-full-list-of-available-services

# systemd
systemctl -l --type service --all

service --status-all

# sudo systemctl -r --type service --all

# software still using the init system
ls /etc/init.d
