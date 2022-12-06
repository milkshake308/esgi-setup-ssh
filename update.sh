#/bin/bash
cp config/sshd_config /etc/ssh/sshd_config
cp config/banner /etc/ssh/banner
cp config/authorized_keys /home/aaron/.ssh/authorized_keys
chown -R aaron:aaron /home/aaron/.ssh/authorized_keys
systemctl reload ssh.service
