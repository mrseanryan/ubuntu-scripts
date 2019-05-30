echo "!this script needs to run with sudo!"

CONFIG=/etc/ssh/sshd_config

echo "# BEGIN CUSTOM CONFIG" >> $CONFIG

echo "# yes - for VC remote" >> $CONFIG
echo AllowTcpForwarding yes >> $CONFIG

echo X11Forwarding no >> $CONFIG

# This script run under sudo, so actually uses root for $USER, which is not useful
echo "# TODO - AllowUsers $USER" >> $CONFIG

echo ! TODO - adjust AllowUsers in $CONFIG !

echo Banner /etc/issue.net >> $CONFIG

echo PubkeyAuthentication yes >> $CONFIG
echo RSAAuthentication yes >> $CONFIG

# cat $CONFIG

cat config/login-banner.txt >> /etc/issue.net

# reduce permissions to match open-ssh standard:
chmod go-w ~/
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys

sudo systemctl restart ssh
