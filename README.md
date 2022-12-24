# Born2beroot

"This project aims to introduce you to the wonderful world of virtualization.
You will create your first machine in VirtualBox (or UTM if you can’t use VirtualBox)
under specific instructions. Then, at the end of this project, you will be able to set up
your own operating system while implementing strict rules"

# Important 

Subject was updated on 07/12/2022 - https://www.centos.org/centos-linux-eol/
Centos -> Rocky
# Where you can learn more !

Internet<br>
https://github.com/benmaia/42_Born2beRoot_Guide/<br>
https://github.com/ayoub0x1/born2beroot<br>
https://github.com/hanshazairi/42-born2beroot<br>
https://nostressdev.tistory.com/12

[Bonus]<br>
Disk mount: https://www.youtube.com/watch?v=2w-2MX5QrQw<br>

Some of the tutorials are missing the step of close port 68 ( displayed on ss -tunlp)

# What you should know before evalution 
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
</br>
<details>
<summary>LVM</summary>
<br>
		Logical volume management provides a higher-level view of the disk storage on a computer system than the traditional view of disks and partitions. This gives the system administrator much more flexibility in allocating storage to applications and users.

Storage volumes created under the control of the logical volume manager can be resized and moved around almost at will. 

	https://wiki.debian.org/LVM
</details>
</br>
<details>
<summary>Operating system</summary>
<br>
	I choose Debian because of Package management and followed the suggestion on subject to "You must choose as an operating system either the latest stable version of Debian (no testing/unstable), or the latest stable version of CentOS. Debian is highly recommended if you are new to system administration."</br>
	Differences between debian and 11 and rocky linux</br>
	- Rocky doesn't support 32 bit</br>
	- Debian its the mother of many operating systems like Ubuntu</br>
	- AppArmor enable by default on Debian and SELinux on Rocky</br>
	- exFAT support on Debian</br>
	- apt use as a package manager in Debian, and Yum, DNF on rocky.</br>
	- Debian is know to care about the stability of the applications it ships with, and guarantees that your server and apps running on it are "OK".</br>
	- Rocky is a replacement of CentOS, its intended to have stability that RedHat releases will have, offering the confidence that users always enjoyed with CentOS.</br>
	
<br>https://computingforgeeks.com/debian-11-vs-debian-10-vs-rocky-linux-8-comparison-table/</br>
	
Difference between aptidude and apt?</br>
Aptitude and apt are two package management tools that are used to install, remove, and manage packages on Debian-based systems.

The main difference between aptitude and apt is the way they handle dependencies. aptitude is able to resolve dependencies in a more sophisticated way than apt, and it can also handle conflicting dependencies more gracefully. For example, if a package depends on another package that is not installed, aptitude will automatically install the required package and any other dependencies that are needed. In contrast, apt will only install the requested package and will not automatically install any dependencies.</br>

Another difference between the two tools is the interface. aptitude has a more interactive, user-friendly interface, with features such as a search function and the ability to mark packages for installation, removal, or purging. apt, on the other hand, has a more command-line oriented interface and does not have as many interactive features.</br>

Overall, aptitude is generally considered to be more user-friendly and easier to use than apt, but apt is generally faster and more efficient. Both tools can be used to achieve the same results, and it is up to the user to decide which one they prefer to use.</br>

<br>What APPArmor is?</br>
	
AppArmor (Application Armor) is a Linux kernel security module that allows administrators to define security policies for applications and processes running on a system. It is designed to protect against malicious or accidental access to sensitive files and resources, and to prevent applications from making unauthorized changes to the system.</br>

With AppArmor, administrators can specify rules that define what resources an application or process is allowed to access, and what actions it is allowed to perform. For example, an AppArmor policy could allow an application to read and write to certain directories, but not to execute any system commands.</br></br></br>

AppArmor is implemented in the Linux kernel and is able to monitor and enforce the security policies for all applications and processes running on the system. It is transparent to the user and does not require any special configuration or setup on the part of the user.</br></br>

AppArmor is a useful tool for improving the security of a Linux system, and is often used in conjunction with other security measures such as firewalls and intrusion detection systems.</br>
</details>
</br>
<details>
<summary>Password Policy</summary>
<br>
	Advantages</br>
Improved security- Strong passwords are more difficult to guess or crack, making it harder for attackers to gain unauthorized access to systems and data.</br>

Reduced risk of compromise- By requiring strong passwords, the risk of password-based attacks is greatly reduced. This includes attacks such as dictionary attacks, brute-force attacks, and others that rely on weak or easily guessable passwords.</br>

Enhanced compliance- Strong password policies can help organizations meet regulatory and industry compliance requirements, such as PCI DSS or HIPAA.</br>

Disadvantages</br>

Increased complexity- Strong passwords are typically longer and more complex, which can make them harder for users to remember. This can lead to increased support costs as users may need to reset their passwords more often.</br>

Decreased usability- Strong passwords may also be less convenient for users, as they may need to use special characters or change their passwords more frequently. This can lead to user frustration and decreased productivity. </br>

Higher overhead- Implementing and enforcing strong password policies can require additional resources, such as tools and processes for password management and password audits. This can increase the overhead associated with password management.</br>
</details>
</br>
<details>
<summary>Sudo</summary>
<br>
		FILL
		
		SUDO RULES
		
		FILL
</details>
</br>
<details>
<summary>UFW</summary>
<br>
		FILL
		
</details>
</br>
<details>
<summary>SSH</summary>
<br>
		FILL
		
</details>
</br>
<details>
<summary>Bonus service</summary>
<br>
		FILL
		
</details>
</br>
</br>
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
