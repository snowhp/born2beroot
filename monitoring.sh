#!/bin/bash

arch=$(arch)
kernel=$(uname -r)
phyproc=$(nproc --all)
virtproc=$(cat /proc/cpuinfo | grep processor | wc -l)
ram_usage=$(free -m | grep Mem: | awk '{printf ("%i/%i MB (%.2f%%)", $3, $2, $3/$2*100 )}')
disk_usage=$(df -Bm | grep '^/dev/' | grep -v '/boot$' | awk '{fdisk += $3} {tdisk += $2} END {printf("%iMB/%iMB (%.2f%%)"), fdisk, tdisk, fdisk/tdisk*100}')
proc_usage_percent=$(top -bn1 | grep '%Cpu' | awk '{printf("%.2f%%", $2)}')
last_reboot=$(last reboot | grep -m1 "reboot" | awk '{print $5 " " $7 " " $6 " at " $8}')
lvm_active=$(cat /etc/fstab | grep '/dev/mapper' | awk '{if ($1) {printf "\033[0;32mYes\033[0m";exit} else {print "\033[0;031mNo\033[0m";exit;}}')
n_active_connect=$(ss -t | grep ESTAB | wc -l)
n_users_server=$(who | cut -d " " -f 1 | sort -u | wc -l)
ipv4=$(ip route | grep default | awk '{print $3}')
mac=$(ip addr | grep ether | awk '{print $2}')
n_commands_sudo=$(journalctl _COMM=sudo | grep COMMAND | wc -l)

wall "	[OS Architecture] $arch
	[Kernel Version] $kernel
        [CPU physical] $phyproc
        [vCPU] $virtproc
        [Memory Free] $ram_usage
        [Disk Free] $disk_usage
        [CPU load] $proc_usage_percent
        [Last reboot] $last_reboot
        [LVM] $lvm_active
        [TCP Connections] $n_active_connect
        [User log] $n_users_server
        [Network] $ipv4 ($mac)
        [Sudo] $n_commands_sudo cmd"
