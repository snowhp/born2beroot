# Born2beroot

"This project aims to introduce you to the wonderful world of virtualization.
You will create your first machine in VirtualBox (or UTM if you can’t use VirtualBox)
under specific instructions. Then, at the end of this project, you will be able to set up
your own operating system while implementing strict rules"

# Where you can learn more !

Internet<br>
https://github.com/benmaia/42_Born2beRoot_Guide/<br>
https://github.com/ayoub0x1/born2beroot<br>
https://github.com/hanshazairi/42-born2beroot<br>

[Bonus]<br>
Disk mount: https://www.youtube.com/watch?v=2w-2MX5QrQw<br>

Some of the tutorials are missing the step of close port 68 ( displayed on ss -tunlp)

# What you should test before evalution 
<details>
<summary>How a virtual machine works</summary>
<br>
"The different types of virtual machines

Virtual machines are generally classified into two different types: system virtual machines and process virtual machines.
System virtual machines

When people use the term "virtual machines," they’re generally referring to system virtual machines, also called full virtualization VMs. A system VM is an entire operating system that runs on virtual hardware inside a host computer. You must use a hypervisor, a software that creates and runs VMs, to allocate resources to the system virtual machines.
Process virtual machines

A process VM, or application VM, is an abstraction layer that enables code written in a specific programming language to run on any operating system. Popular examples include the Java Virtual Machine and the .NET framework, which use the Common Language Runtime."

Sources: https://www.mongodb.com/cloud-explained/virtual-machines

"Virtual machines are best for running multiple applications together, monolithic applications, isolation between apps, and for legacy apps running on older operating systems. Containers and virtual machines may also be used together. "

https://www.vmware.com/topics/glossary/content/virtual-machine.html
</details>
<details>
<summary>Operating system</summary>
<br>
	I choose Debian because of Package management and followed the suggestion on subject to "You must choose as an operating system either the latest stable version of Debian (no testing/unstable), or the latest stable version of CentOS. Debian is highly recommended if you are new to system administration."
	Debian vs CentOS
	
	https://www.educba.com/centos-vs-debian/
	
	
	
	
</details>
<details>
<summary>Some of the test that will be perfommed by evaluators</summary>
<br>
	sudo ufw status - check ufw status;<br>
    sudo service ssh status - check SSH status<br>
    ssh ccosta-c@ip -p 4242 - enter remotely<br>
    uname -v - check OS<br>
    getent group sudo or ccosta-c42 ---- check user in these 2 groups<br>
    sudo adduser username -- create new user<br>
    sudo chage -l username -- check the other password rules<br>
    sudo nano /etc/login.defs -- check some of the documents<br>
    sudo nano /etc/pam.d/common-password -- other rules<br>
    sudo addgroup evaluating --- create a new group<br>
    sudo adduser username evaluating -- add the user to the new group<br>
    hostame -- check hostname<br>
    hostnamectl set-hostname username -- change hostname<br>
    lsblk --- check partitions<br>
    sudo -V --- check if sudo is installed<br>
    sudo adduser username sudo --- add user to sudo<br>
    getent group sudo ---- check if its correct<br>
    sudo visudo --- check the rules<br>
    sudo nano /var/log/sudo/sudo.log ----- check the log<br>
    dpkg -l ufw  --- check UFW is correctly installed<br>
    sudo ufw allow 8080 --- allow port 8080<br>
    sudo ufw status --- check the port<br>
    sudo ufw delete allow 8080 --- delete the ports<br>
    sudo service ssh status --- check SSH status<br>
    sudo nano /usr/local/bin/monitoring.sh  ---- check script<br>
    sudo crontab -u root -e --- check cron tabs<br>
    dpkg -l | grep lighttpd or MariaDB or PHP<br>
    Thanks to [ccosta-c](https://github.com/ccosta-c)<br>
</details>
