#/bin/bash
apt update && apt install -y sudo openssh-server
useradd aaron
usermod -aG sudo aaron
mkdir -p /home/aaron/.ssh
chown -R aaron:aaron /home/aaron/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDnbt08WXvO9aL78G7nv2YRn/fViKfSajOeiwWfMUZvi9SUrQotllmNgpBw++CcIR77Wa9G0rlyH39s41krAf4VPZfhJVKl5tM6z8snOSrI2YDEc1ZhuMsoUU6Wgsk2VveVAhQ01MmwlvYRngXOmNU6ELwX4tqJXkJHVdDs19jEwbSNcXPHLjVj9BTEp/FyfOK6bxPy1YVybQieoyC3kewK3Oox1UEqj8PSWl+FDB2PbFR3/SgQA/1O0WEmC58YyIBIEgHYMFFPLiQ3eT37732Q3+/obNneXEvIx8K6cWRMLAUMpWtfn0oyOb876BLwveCJK+r95FngbNtZSpsiUkrqG5U9R1tSrAcAfLlf3LSYQ4TIe63Y4t+iO7LtTCL+1E+HOv+5ojwIvd0mwsCQt0BWl+4LVZQ2HxFu3j7v7wBD1gdA5PJmxpmnf2EhYQdiwovyzvr3xDzeq9i3QaL1f9dtMb9x3h4k28Cvdrq8lG5AbmMnA/LG53XRLWYYzJAn4Fc= rnsaa@fedora" >> /home/aaron/.ssh/authorized_keys
cp config/sshd_config /etc/ssh/sshd_config
systemctl enable --now ssh.service
