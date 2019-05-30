echo needs sudo

CONFIG=/etc/ssh/sshd_config

echo "# BEGIN CUSTOM CONFIG" >> $CONFIG

echo AllowTcpForwarding no >> $CONFIG

echo X11Forwarding no >> $CONFIG

# This actually uses root for $USER, which is not useful
echo "# TODO - AllowUsers $USER" >> $CONFIG

echo Banner /etc/issue.net >> $CONFIG

echo PubkeyAuthentication yes >> $CONFIG
echo RSAAuthentication yes >> $CONFIG

cat $CONFIG

cat config/login-banner.txt >> /etc/issue.net

# reduce permissions to match open-ssh standard:
chmod go-w ~/
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys

sudo systemctl restart ssh
