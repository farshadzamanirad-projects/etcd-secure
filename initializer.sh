#!/bin/bash
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
systemctl reload sshd
echo -e "123\n123" | passwd root >/dev/null 2>&1
