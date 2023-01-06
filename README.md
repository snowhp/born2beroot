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
<br></br>

## Advantages</br>
Improved security- Strong passwords are more difficult to guess or crack, making it harder for attackers to gain unauthorized access to systems and data.</br>

Reduced risk of compromise- By requiring strong passwords, the risk of password-based attacks is greatly reduced. This includes attacks such as dictionary attacks, brute-force attacks, and others that rely on weak or easily guessable passwords.</br>

Enhanced compliance- Strong password policies can help organizations meet regulatory and industry compliance requirements, such as PCI DSS or HIPAA.</br>

## Disadvantages</br>

Increased complexity- Strong passwords are typically longer and more complex, which can make them harder for users to remember. This can lead to increased support costs as users may need to reset their passwords more often.</br>

Decreased usability- Strong passwords may also be less convenient for users, as they may need to use special characters or change their passwords more frequently. This can lead to user frustration and decreased productivity. </br>

Higher overhead- Implementing and enforcing strong password policies can require additional resources, such as tools and processes for password management and password audits. This can increase the overhead associated with password management.</br>
</details>
</br>
<details>
<summary>Sudo</summary>
<br>
	
sudo (short for "superuser do") is a command in Linux and other Unix-like operating systems that allows users to execute commands as the superuser (i.e., root user) or other users. It is used to execute commands with elevated privileges, which are required for certain tasks that ordinary users are not allowed to perform.</br>

Using sudo allows you to perform tasks that require root privileges without logging in as the root user. This is useful because the root user has complete control over the system, and any mistakes made while logged in as the root user can have serious consequences. By using sudo, you can perform these tasks while logged in as an ordinary user and only elevate your privileges when needed.</br>

## Some common tasks that may require root privileges include

Installing software or system updates</br>
Changing system settings or configurations</br>
Accessing and modifying system files</br>

Using sudo is generally considered a best practice because it helps to prevent accidental changes to the system and helps to ensure that only authorized users are able to perform sensitive tasks.</br>

To use sudo, you must first be granted permission by a system administrator or by the root user. This is done by adding your user account to the sudoers file, which is a configuration file that specifies which users are allowed to use sudo and which commands they are allowed to execute. Once you have been granted sudo privileges, you can use the sudo command followed by the command you want to execute, and you will be prompted to enter your password. This verifies your identity and allows you to perform the command with the elevated privileges of the specified user.</br>
	
## Sudo policy

The sudoers file is a configuration file that specifies which users are allowed to use the sudo command and which commands they are allowed to execute. It is an important part of the sudo system, which allows users to execute commands as the superuser (i.e., root user) or other users.</br>

The sudoers file is located at "/etc/sudoers" on most Linux systems, and it is used to control who can use sudo and what they are allowed to do. The file is typically managed by the system administrator, and it contains a list of rules that specify which users are allowed to use sudo and which commands they are allowed to execute.</br>

The sudoers file uses a specific syntax to define the rules. For example, a rule may look like this:</br>

user ALL=(ALL) ALL</br>

This rule allows the user "user" to run any command as any user on the system.</br>

By default, the root user is allowed to use sudo and execute any command. However, you can use the sudoers file to grant sudo privileges to other users and to restrict the commands they are allowed to execute. This is useful because it allows you to delegate certain tasks to other users while still maintaining control over the system.</br>

Overall, the sudoers file is an important part of the sudo system and is used to control who can use sudo and what they are allowed to do. It helps to ensure that only authorized users are able to perform sensitive tasks and helps to prevent accidental changes to the system.</br>
		
https://www.sudo.ws/docs/man/sudoers.man/
</details>
</br>
<details>
<summary>UFW</summary>
<br>
UFW (Uncomplicated Firewall) is a firewall application for Linux systems. It is designed to be easy to use and configure, making it a popular choice for users who want a simple way to manage their firewall.

A firewall is a security system that controls incoming and outgoing network traffic based on predetermined security rules. It is used to protect a network or system from unauthorized access and to allow only authorized traffic to pass through.

UFW is a frontend for the Linux kernel's netfilter framework, which is a packet filtering system that allows you to control incoming and outgoing network traffic. UFW simplifies the process of configuring and managing the netfilter firewall by providing a set of commands and a configuration file that can be used to define the firewall rules.

## Some common uses for UFW include:

Blocking unwanted traffic: You can use UFW to block incoming traffic from specific IP addresses or ranges, or to block certain types of traffic (e.g., HTTP, FTP).

Allowing specific traffic: You can use UFW to allow incoming traffic from specific IP addresses or ranges, or to allow certain types of traffic (e.g., SSH, SMTP).

Monitoring firewall activity: You can use UFW to view the current firewall rules and to see what traffic is being allowed or denied by the firewall.

Overall, UFW is a useful tool for managing the firewall on a Linux system. It provides an easy-to-use interface for controlling incoming and outgoing traffic, helping to secure your system and protect it from unauthorized access.
		
	
https://www.linux.com/training-tutorials/introduction-uncomplicated-firewall-ufw/</br>
</details>
</br>
<details>
<summary>SSH</summary>
<br>
SSH (Secure Shell) is a network protocol used to securely connect to a computer over a network. It is often used to remotely access and manage servers, network devices, and other types of computer systems.</br>

To use SSH, you need a client program on your local computer that can establish an SSH connection to a remote server. The most common SSH client for Windows is PuTTY, and for macOS and Linux, it is the built-in terminal. Once connected to the remote server, you can use the command line to execute commands and manage the remote system as if you were sitting in front of it.</br>

## Some common uses for SSH include:

Remote command execution: You can use SSH to remotely execute commands on a server or network device. This can be useful for managing servers and automating tasks.</br>

Secure file transfer: You can use SSH to securely transfer files between computers using the Secure Copy Protocol (SCP).</br>

VPN (Virtual Private Network) connection: You can use SSH to create a secure, encrypted tunnel between two computers, allowing you to access network resources on one computer as if you were on the other.</br>

Remote desktop access: Some SSH clients, such as X2Go, allow you to remotely access and control the desktop of a remote computer.</br>

Overall, SSH is an essential tool for anyone working with servers and other types of remote systems. It provides a secure and convenient way to remotely access and manage these systems.</br>
		
https://www.ssh.com/academy/ssh
</details>
</br>
<details>
<summary>Bonus service</summary>
<br>
FTP (File Transfer Protocol) is a standard network protocol used for transferring files between computers. It is often used to transfer files between a client and a server, or between servers. FTP is useful for a variety of reasons, including:</br>


Transferring large files: FTP can be used to transfer large files between computers, making it a useful tool for transferring files that are too large to send via email.</br>

Automatic file transfers: FTP can be configured to automatically transfer files between computers at scheduled intervals, making it a useful tool for automating file transfers.</br>

Secure file transfers: FTP can be configured to use SSL/TLS (Secure Sockets Layer/Transport Layer Security) to encrypt the connection, making it a secure way to transfer sensitive files.</br>

Accessing files remotely: FTP can be used to remotely access and manage files on a server, making it a useful tool for remotely managing a website or other types of files.</br>

Collaborating with others: FTP can be used to share files with others, making it a useful tool for collaboration.</br>

Overall, FTP is a useful tool for transferring files between computers and for managing files remotely. It is commonly used to transfer files to and from web servers, making it an important tool for web developers and others who work with websites.</br>
		
</details>
</br>
</br>
<details>
<summary>Useful commands for evaluation</summary>
<br>
	
Make sure you understand them!</br>
	
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
