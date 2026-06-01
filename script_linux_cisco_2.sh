sysadmin@localhost:~$ dd if=/dev/zero of=/tmp/swapex bs=1M count=50      
#It is commonly used to create a fixed-size file that can later be configured as swap space.
# Swap space helps the operating system when RAM is running low by using disk space as additional memory.  
#result     
#50+0 records in                                                                 
#50+0 records out                                                                
#52428800 bytes (52 MB) copied, 0.028 s, 1.9 GB/s 
sysadmin@localhost:~$ cd ~/Documents      
#The cd (change directory) command is used to change directories. In this case, 
#it takes you to the Documents folder inside your home directory (~)                                      
sysadmin@localhost:~/Documents$ mv people.csv Work 
#Moves the file people.csv to the Work directory.                             
sysadmin@localhost:~/Documents$ ls Work  
#Displays the contents of the Work directory.
#result                                       
#people.csv                                                                      
sysadmin@localhost:~/Documents$ mv numbers.txt letters.txt alpha.txt School  
#Moves the files numbers.txt, letters.txt, and alpha.txt to the School directory.   
sysadmin@localhost:~/Documents$ ls School  
#Shows that School contains three directories (Art, Engineering, Math) 
#and three files (alpha.txt, letters.txt, numbers.txt).                                     
#result
#Art  Engineering  Math  alpha.txt  letters.txt  numbers.txt                     
sysadmin@localhost:~/Documents$ ls
#Displays the files and directories in the current directory.
#result                                              
#School           alpha-second.txt  hello.sh      newhome.txt                    
#Work             alpha-third.txt   hidden.txt    os.csv                         
#adjectives.txt   animals.txt       linux.txt     profile.txt                    
#alpha-first.txt  food.txt          longfile.txt  red.txt                        
sysadmin@localhost:~/Documents$ mv animals.txt zoo.txt  
#Renames the file animals.txt to zoo.txt.                        
sysadmin@localhost:~/Documents$ ls   
#Displays the files and directories in the current directory.
#result                                           
#School           alpha-second.txt  hidden.txt    os.csv                         
#Work             alpha-third.txt   linux.txt     profile.txt                    
#adjectives.txt   food.txt          longfile.txt  red.txt                        
#alpha-first.txt  hello.sh          newhome.txt   zoo.txt  
sysadmin@localhost:~/Documents$ rm linux.txt  
#Deletes the file linux.txt.                                  
sysadmin@localhost:~/Documents$ ls linux.txt 
#The file no longer exists because it was deleted.
#result                                   
#ls: cannot access linux.txt: No such file or directory                          
sysadmin@localhost:~/Documents$ rm Work 
#rm cannot delete directories by itself.                                        
#result
#rm: cannot remove 'Work': Is a directory                                        
sysadmin@localhost:~/Documents$ rm -r Work 
#Deletes the Work directory and everything inside it.                                     
sysadmin@localhost:~/Documents$ ls Work 
#The Work directory was successfully deleted.
#result                                        
#ls: cannot access Work: No such file or directory 
sysadmin@localhost:~/Documents$ cp /etc/passwd .  
#Copies the /etc/passwd file to the current directory (.).                              
sysadmin@localhost:~/Documents$ grep sysadmin passwd
#Searches for the word sysadmin inside the passwd file you just copied. 
#result                           
#sysadmin:x:1001:1001:System Administrator,,,,:/home/sysadmin:/bin/bash 
sysadmin@localhost:~/Documents$ grep sysadmin passwd  
#Searches for "sysadmin" in the passwd file.
#result                          
#sysadmin:x:1001:1001:System Administrator,,,,:/home/sysadmin:/bin/bash          
sysadmin@localhost:~/Documents$  grep 'root' passwd  
#Searches for all lines containing the word root.
#result                           
#root:x:0:0:root:/root:/bin/bash                                                 
#operator:x:1000:37::/root:                                                      
sysadmin@localhost:~/Documents$ grep '^root' /etc/passwd    
#^ means "beginning of line". Searches for lines that start with root.                    
#result
#root:x:0:0:root:/root:/bin/bash                                                 
sysadmin@localhost:~/Documents$ cat alpha-first.txt 
#Displays the contents of a file. 
#result                           
#A is for Animal                                                                 
#B is for Bear                                                                   
#C is for Cat                                                                    
#D is for Dog                                                                    
#E is for Elephant                                                               
#F is for Flower                                                                 
sysadmin@localhost:~/Documents$  grep 'r$' alpha-first.txt
#$ means "end of line". Searches for lines ending with the letter r.                      
#result
#B is for Bear                                                                   
#F is for Flower 
sysadmin@localhost:~/Documents$ cat red.txt 
#Displays the entire contents of the red.txt file.  
#result                                  
#red                                                                             
#reef                                                                            
#rot                                                                             
#reeed                                                                           
#rd                                                                              
#rod                                                                             
#roof                                                                            
#reed                                                                            
#root                                                                            
#reel                                                                            
#read                                                                            
sysadmin@localhost:~/Documents$ grep 'r..f' red.txt  
#Searches for patterns with two characters between r and f.                           
#result
#reef                                                                            
#roof                                                                            
sysadmin@localhost:~/Documents$ grep 'r..d' red.txt  
#Searches for patterns with two characters between r and d.                           
#result
#reed                                                                            
#read                                                                            
sysadmin@localhost:~/Documents$ grep '....' red.txt    
#Searches for lines with at least four characters.                         
#result
#reef                                                                            
#reeed                                                                           
#roof                                                                            
#reed                                                                            
#root                                                                            
#reel                                                                            
#read                                                                            
sysadmin@localhost:~/Documents$ grep 'r..t' /etc/passwd   
#It is used to search for specific patterns using regular expressions inside files.                      
#result
#root:x:0:0:root:/root:/bin/bash                                                 
#operator:x:1000:37::/root:                                 
sysadmin@localhost:~/Documents$ cat profile.txt   
#Displays the entire contents of the profile.txt file.      
#result                         
#Hello my name is Joe.                                                           
#I am 37 years old.                                                              
#3121991                                                                         
#My favorite food is avocados.                                                   
#I have 2 dogs.                                                                  
#123456789101112                                                                 
sysadmin@localhost:~/Documents$  grep '[0-9]' profile.txt
#Searches for lines containing numbers.
#result                        
#I am 37 years old.                                                              
#3121991                                                                         
#I have 2 dogs.                                                                  
#123456789101112                                                                 
sysadmin@localhost:~/Documents$ grep '[^0-9]' profile.txt
#Searches for lines containing non-numeric characters.
#result                        
#Hello my name is Joe.                                                           
#I am 37 years old.                                                              
#My favorite food is avocados.                                                   
#I have 2 dogs.                                                                  
#sysadmin@localhost:~/Documents$ grep '[.]' profile.txt                          
#Hello my name is Joe.                                                           
#I am 37 years old.                                                              
#My favorite food is avocados.                                                   
#I have 2 dogs.                                 
sysadmin@localhost:~/Documents$ cat red.txt
#Displays the entire contents of the red.txt file.       
#result                               
#red                                                                             
#reef                                                                            
#rot                                                                             
#reeed                                                                           
#rd                                                                              
#rod                                                                             
#roof                                                                            
#reed                                                                            
#root                                                                            
#reel                                                                            
#read 
sysadmin@localhost:~/Documents$ grep 're*d' red.txt    
#Searches for r followed by zero or more e and ending with d.
#result                          
#red                                                                             
#reeed                                                                           
#rd                                                                              
#reed                                                                            
sysadmin@localhost:~/Documents$ grep 'r[oe]*d' red.txt 
#Searches for r, followed by o or e, ending with d.
#result                          
#red                                                                             
#reeed                                                                           
#rd                                                                              
#rod                                                                             
#reed                                                                            
sysadmin@localhost:~/Documents$ grep 'z*' red.txt 
#Searches for r, followed by o or e, ending with d.      
#result                 
#red                                                                             
#reef                                                                            
#rot                                                                             
#reeed                                                                           
#rd                                                                              
#rod                                                                             
#roof                                                                            
#reed                                                                            
#reed                                                                            
#root                                                                            
#reel                                                                            
#read                                                                            
sysadmin@localhost:~/Documents$ grep 'e*' red.txt  
#Searches for lines with zero or more e characters.
#result                              
#red                                                                             
#reef                                                                            
#rot                                                                             
#reeed                                                                           
#rd                                                                              
#rod                                                                             
#roof                                                                            
#reed                                                                            
#root                                                                            
#reel                                                                            
#read                                                                            
sysadmin@localhost:~/Documents$ grep 'ee*' red.txt 
#Searches for one e followed by zero or more e characters.
#result                              
#red                                                                             
#reef                                                                            
#reeed                                                                           
#reed                                           
#reel                                                                            
#read  
sysadmin@localhost:~$ grep 'red'     
#grep searches for the word or pattern "red". However, 
#this command is incomplete because no file was specified.
#result                                           
#The gril in the red dress had red hair and a matching red bow.                  
#The gril in the red dress had red hair and a matching red bow.                  
#The horse in the red saddle was bred for racing.                                
#The horse in the red saddle was bred for racing.  
sysadmin@localhost:~$ su -
#Switches to the root user (superuser) and loads the full root environment.                                                      
#Password: netlab123
root@localhost:~# shutdown now   
#Shuts down the system immediately  
#resutl                                             
#shutdown: Unable to shutdown system                                             
root@localhost:~#                                                               
#Broadcast message from sysadmin@localhost                                       
#        (/dev/pts/0) at 1:31 ...                                                
                                                                                
#The system is going down for maintenance NOW!                                   
                                                                                
root@localhost:~# date       
#Displays the current system date and time.
#result                                                   
#Mon Jun  1 01:31:50 UTC 2026                                                    
root@localhost:~#  shutdown 01:51 
#Schedules the system shutdown for 01:51.                                    
#result                                                      
#Broadcast message from sysadmin@localhost                                       
#        (/dev/pts/0) at 1:32 ...                                                
                                                                                
#The system is going down for maintenance in 19 minutes!   

root@localhost:~# shutdown +1 "Goodbye World!"   
#Schedules a shutdown in 1 minute and sends the custom message
#"Goodbye World!" to logged-in users.                               
#result                                                                               
#Broadcast message from sysadmin@localhost                                       
#       (/dev/pts/0) at 1:34 ...                                                
#The system is going down for maintenance in 1 minute!                           
#Goodbye World!
root@localhost:~# ifconfig   
#Displays the network interface configuration.
#reslut                                                   
#eth0      Link encap:Ethernet  HWaddr 02:42:c0:a8:01:02                         
#          inet addr:192.168.1.2  Bcast:192.168.1.255  Mask:255.255.255.0        
#          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1                    
#          RX packets:30 errors:0 dropped:0 overruns:0 frame:0                   
#          TX packets:57 errors:0 dropped:0 overruns:0 carrier:0                 
#          collisions:0 txqueuelen:1000                                          
#          RX bytes:2216 (2.2 KB)  TX bytes:3722 (3.7 KB)                        
                                                                                
#lo        Link encap:Local Loopback                                             
#          inet addr:127.0.0.1  Mask:255.0.0.0                                   
#          inet6 addr: ::1/128 Scope:Host                                        
#          UP LOOPBACK RUNNING  MTU:65536  Metric:1                              
#          RX packets:0 errors:0 dropped:0 overruns:0 frame:0                    
#          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0                  
#          collisions:0 txqueuelen:1000                                          
#          RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)  
root@localhost:~# ping -c 4 192.168.1.3
#Sends 4 ICMP packets to test connectivity with 192.168.1.3.
#reslut                                         
#PING 192.168.1.3 (192.168.1.3) 56(84) bytes of data.                            
#From 192.168.1.2 icmp_seq=1 Destination Host Unreachable                        
#From 192.168.1.2 icmp_seq=2 Destination Host Unreachable                        
#From 192.168.1.2 icmp_seq=3 Destination Host Unreachable                        
#From 192.168.1.2 icmp_seq=4 Destination Host Unreachable                        
                                                                                
#--- 192.168.1.3 ping statistics ---                                             
#4 packets transmitted, 0 received, +4 errors, 100% packet loss, time 3059ms     
#pipe 4                             
root@localhost:~# exit    
#Closes the current session or exits the current user.
#result                                                      
#logout
sysadmin@localhost:~$ ps  
#Displays processes running in the current terminal.
#result                                                      
#    PID TTY          TIME CMD                                                   
#     83 pts/0    00:00:00 bash                                                  
#    139 pts/0    00:00:00 ps 
sysadmin@localhost:~$ ps -e  
#Displays all active processes on the system.
#result                                                   
#    PID TTY          TIME CMD                                                   
#      1 pts/0    00:00:00 init                                                  
#     13 ?        00:00:00 rsyslogd                                              
#     17 ?        00:00:00 cron                                                  
#     19 ?        00:00:00 sshd                                                  
#     36 ?        00:00:00 named                                                 
#     73 pts/0    00:00:00 login                                                 
#     83 pts/0    00:00:00 bash                                                  
#    140 pts/0    00:00:00 ps                                                    
sysadmin@localhost:~$ ps -ef           
#Displays detailed information about all processes.                                         
#result
#UID          PID    PPID  C STIME TTY          TIME CMD                         
#root           1       0  0 00:45 pts/0    00:00:00 /sbin??? /init              
#syslog        13       1  0 00:45 ?        00:00:00 /usr/sbin/rsyslogd          
#root          17       1  0 00:45 ?        00:00:00 /usr/sbin/cron              
#root          19       1  0 00:45 ?        00:00:00 /usr/sbin/sshd              
#bind          36       1  0 00:45 ?        00:00:00 /usr/sbin/named -u bind     
#root          73       1  0 00:45 pts/0    00:00:00 /bin/login -f               
#sysadmin      83      73  0 00:45 pts/0    00:00:00 -bash                       
#sysadmin     141      83  0 02:41 pts/0    00:00:00 ps -ef  
sysadmin@localhost:~$ sudo apt-get update  
#Updates the list of available packages from configured repositories. 
#It does not install software; it only updates package information.
#result                                     
#[sudo] password for sysadmin:                                                   
#Ign file: amd64/ InRelease                                                      
#Ign file: amd64/ Release.gpg                                                    
#Ign file: amd64/ Release                                                        
#Reading package lists... Done                                                   
sysadmin@localhost:~$ apt-cache search cow   
#Searches for packages related to the word cow.                                   
#result
#cowsay - configurable talking cow                                               
sysadmin@localhost:~$ sudo apt-get install cowsay   
#Installs the cowsay package on the system.                            
#result
#Reading package lists... Done                                                   
#Building dependency tree                                                        
#Reading state information... Done                                               
#Suggested packages:                                                             
#  filters                                                                       
#The following NEW packages will be installed:  
# cowsay                                                                        
#0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.                  
#Need to get 0 B/18.5 kB of archives.                                            
#After this operation, 90.1 kB of additional disk space will be used.            
#Selecting previously unselected package cowsay.                                 
#(Reading database ... 24300 files and directories currently installed.)         
#Preparing to unpack .../cowsay_3.03+dfsg1-6_all.deb ...                         
#Unpacking cowsay (3.03+dfsg1-6) ...                                             
#Processing triggers for man-db (2.6.7.1-1ubuntu1) ...                           
#Setting up cowsay (3.03+dfsg1-6) ...  
sysadmin@localhost:~$ cowsay 'NDG Linux Unhatched'
#Displays a cow saying "NDG Linux Unhatched".
#result                              
# _____________________                                                          
#< NDG Linux Unhatched >                                                         
# ---------------------                                                          
#        \   ^__^                                                                
#         \  (oo)\_______                                                        
#            (__)\       )\/\                                                    
#                ||----w |                                                       
#                ||     ||    
sysadmin@localhost:~$ sudo apt-get update 
#Updates the package list.
#result                                      
#Ign file: amd64/ InRelease                                                      
#Ign file: amd64/ Release.gpg                                                    
#Ign file: amd64/ Release                                                        
#Reading package lists... Done                                                   
sysadmin@localhost:~$ sudo apt-get upgrade      
#Upgrades installed packages.
#result                                
#Reading package lists... Done                                                   
#Building dependency tree                                                        
#Reading state information... Done                                               
#Calculating upgrade... Done                                                     
#0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.                  
sysadmin@localhost:~$ sudo apt-get purge cowsay 
#Completely removes cowsay.  
#result                              
#Reading package lists... Done                                                   
#Building dependency tree                                                        
#Reading state information... Done                                               
#The following packages will be REMOVED:                                         
#  cowsay*                                                                       
#0 upgraded, 0 newly installed, 1 to remove and 0 not upgraded.                  
#After this operation, 90.1 kB disk space will be freed.                         
#Do you want to continue? [Y/n] Y                                                
#(Reading database ... 24364 files and directories currently installed.)         
#Removing cowsay (3.03+dfsg1-6) ...                                              
#Processing triggers for man-db (2.6.7.1-1ubuntu1) ...   
sysadmin@localhost:~$ passwd 
#Changes the password of the current user (sysadmin).
#result                                                   
#Changing password for sysadmin.                                                 
#(current) UNIX password:                                                        
#Enter new UNIX password:                                                        
#Retype new UNIX password:                                                       
#passwd: password updated successfully                                           
sysadmin@localhost:~$ passwd -S sysadmin  
#Displays password status information for the user.
#result                                      
#sysadmin P 06/01/2026 0 99999 7 -1   
sysadmin@localhost:~$ su root
#Switches to the root user (system administrator).
#You now have administrative privileges. 
#result                                                  
#Password:                                                                       
root@localhost:~# passwd sysadmin  
#You exit root and return to sysadmin.
#result                                             
#Enter new UNIX password:                                                        
#Retype new UNIX password:                                                       
#passwd: password updated successfully                                           
root@localhost:~# exit  
#Exits the current session.
#result                                                         
#exit                 
sysadmin@localhost:~$ cd ~/Documents                                            
sysadmin@localhost:~/Documents$ cat food.txt                                    
Food is good.                                                                   
sysadmin@localhost:~/Documents$  cat food.txt > newfile1.txt                    
sysadmin@localhost:~/Documents$ cat newfile1.txt                                
Food is good.                                                                   
sysadmin@localhost:~/Documents$ echo "Hello"                                    
Hello                                                                           
sysadmin@localhost:~/Documents$ cat newfile1.txt                                
Food is good.                                                                   
sysadmin@localhost:~/Documents$ echo "I like food." > newfile1.txt              
sysadmin@localhost:~/Documents$ cat newfile1.txt                                
I like food.                                                                    
sysadmin@localhost:~/Documents$ echo "This food is good." >> newfile1.txt       
sysadmin@localhost:~/Documents$ cat newfile1.txt                                
I like food.                                                                    
This food is good.    