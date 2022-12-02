# Born2beroot

"This project aims to introduce you to the wonderful world of virtualization.
You will create your first machine in VirtualBox (or UTM if you can’t use VirtualBox)
under specific instructions. Then, at the end of this project, you will be able to set up
your own operating system while implementing strict rules"

# Where you can learn more !

Internet
https://github.com/benmaia/42_Born2beRoot_Guide/
https://github.com/ayoub0x1/born2beroot
https://github.com/hanshazairi/42-born2beroot
[Bonus]
Disk mount: https://www.youtube.com/watch?v=2w-2MX5QrQw

#What you should test before evalution 

<details>
<summary>Some of the test that will be perfommed by evaluators Thanks to [@ccosta-c](https://github.com/ccosta-c "@ccosta-c")</summary>
<br>
	sudo ufw status - check ufw status;
    sudo service ssh status - check SSH status
    ssh ccosta-c@ip -p 4242 - enter remotely
    uname -v - check OS
    getent group sudo or ccosta-c42 ---- check user in these 2 groups
    sudo adduser username -- create new user
    sudo chage -l username -- check the other password rules
    sudo nano /etc/login.defs -- check some of the documents
    sudo nano /etc/pam.d/common-password -- other rules
    sudo addgroup evaluating --- create a new group
    sudo adduser username evaluating -- add the user to the new group
    hostame -- check hostname
    hostnamectl set-hostname username -- change hostname
    lsblk --- check partitions
    sudo -V --- check if sudo is installed
    sudo adduser username sudo --- add user to sudo
    getent group sudo ---- check if its correct
    sudo visudo --- check the rules
    sudo nano /var/log/sudo/sudo.log ----- check the log
    dpkg -l ufw  --- check UFW is correctly installed
    sudo ufw allow 8080 --- allow port 8080
    sudo ufw status --- check the port
    sudo ufw delete allow 8080 --- delete the ports
    sudo service ssh status --- check SSH status
    sudo nano /usr/local/bin/monitoring.sh  ---- check script
    sudo crontab -u root -e --- check cron tabs
    dpkg -l | grep lighttpd or MariaDB or PHP
</details>
