ls ~/Documents #Lists the contents of the Documents folder inside the home directory.
#result:
#School           alpha-second.txt  food.txt     linux.txt     os.csv            
#Work             alpha-third.txt   hello.sh     longfile.txt  people.csv        
#adjectives.txt   alpha.txt         hidden.txt   newhome.txt   profile.txt       
#alpha-first.txt  animals.txt       letters.txt  numbers.txt   red.txt  
ls #Lists the contents of the current directory.
#result:
#Desktop  Documents  Downloads  Music  Pictures  Public  Templates  Videos 
LS #Tries to run a command named LS.Linux is case-sensitive, so this fails.
#result:
#-bash: /usr/games/LS: Permission denied  
ls Documents #Lists contents of the Documents folder from current location.
#result:
#School           alpha-second.txt  food.txt     linux.txt     os.csv            
#Work             alpha-third.txt   hello.sh     longfile.txt  people.csv        
#adjectives.txt   alpha.txt         hidden.txt   newhome.txt   profile.txt       
#alpha-first.txt  animals.txt       letters.txt  numbers.txt   red.txt  
aptitude moo #Hidden joke command.
#result:
#There are no Easter Eggs in this program.   
ls -l #Long format listing (permissions, owner, size, date).     
#result:                                               
#total 4                                                                         
#drwx------ 2 sysadmin sysadmin   10 Dec 20  2017 Desktop                        
#drwx------ 4 sysadmin sysadmin 4096 Dec 20  2017 Documents                      
#drwx------ 2 sysadmin sysadmin   10 Dec 20  2017 Downloads                      
#drwx------ 2 sysadmin sysadmin   10 Dec 20  2017 Music                          
#drwx------ 2 sysadmin sysadmin   10 Dec 20  2017 Pictures                       
#drwx------ 2 sysadmin sysadmin   10 Dec 20  2017 Public                         
#drwx------ 2 sysadmin sysadmin   10 Dec 20  2017 Templates                      
#drwx------ 2 sysadmin sysadmin   10 Dec 20  2017 Videos  
ls -r  #Reverse order.
#result:                                                   
#Videos  Templates  Public  Pictures  Music  Downloads  Documents  Desktop
ls -l -r #Combine long format and reverse order.
#result:                                             
#total 4                                                                         
#drwx------ 2 sysadmin sysadmin   10 Dec 20  2017 Videos                         
#drwx------ 2 sysadmin sysadmin   10 Dec 20  2017 Templates                      
#drwx------ 2 sysadmin sysadmin   10 Dec 20  2017 Public                         
#drwx------ 2 sysadmin sysadmin   10 Dec 20  2017 Pictures                       
#drwx------ 2 sysadmin sysadmin   10 Dec 20  2017 Music                          
#drwx------ 2 sysadmin sysadmin   10 Dec 20  2017 Downloads                      
#drwx------ 4 sysadmin sysadmin 4096 Dec 20  2017 Documents                      
#drwx------ 2 sysadmin sysadmin   10 Dec 20  2017 Desktop  
ls -rl #Combine long format and reverse order.    
#result:                                               
#total 4                                                                         
#drwx------ 2 sysadmin sysadmin   10 Dec 20  2017 Videos                         
#drwx------ 2 sysadmin sysadmin   10 Dec 20  2017 Templates                      
#drwx------ 2 sysadmin sysadmin   10 Dec 20  2017 Public                         
#drwx------ 2 sysadmin sysadmin   10 Dec 20  2017 Pictures                       
#drwx------ 2 sysadmin sysadmin   10 Dec 20  2017 Music                          
#drwx------ 2 sysadmin sysadmin   10 Dec 20  2017 Downloads                      
#drwx------ 4 sysadmin sysadmin 4096 Dec 20  2017 Documents                      
#drwx------ 2 sysadmin sysadmin   10 Dec 20  2017 Desktop 
ls -lr #Combine long format and reverse order.       
#result:                                             
#total 4                                                                         
#drwx------ 2 sysadmin sysadmin   10 Dec 20  2017 Videos                         
#drwx------ 2 sysadmin sysadmin   10 Dec 20  2017 Templates                      
#drwx------ 2 sysadmin sysadmin   10 Dec 20  2017 Public                         
#drwx------ 2 sysadmin sysadmin   10 Dec 20  2017 Pictures                       
#drwx------ 2 sysadmin sysadmin   10 Dec 20  2017 Music                          
#drwx------ 2 sysadmin sysadmin   10 Dec 20  2017 Downloads                      
#drwx------ 4 sysadmin sysadmin 4096 Dec 20  2017 Documents                      
#drwx------ 2 sysadmin sysadmin   10 Dec 20  2017 Desktop  
aptitude moo  #ncreasing verbosity changes the joke response.  
#result:                                          
#There are no Easter Eggs in this program.                                       
aptitude -v moo #ncreasing verbosity changes the joke response.  
#result:                                        
#There really are no Easter Eggs in this program.                                
aptitude -vv moo #ncreasing verbosity changes the joke response.  
#result:                                        
#Didn't I already tell you that there are no Easter Eggs in this program?        
aptitude -vvv moo #ncreasing verbosity changes the joke response.
#result:                                        
#Stop it!
cd Documents #Move into Documents directory.  
#result:                                            
#~/Documents$ cd / 
/Documents$ cd / #Go to root directory.   
#result:                                        
#/$ 
cd /home/sysadmin #Go to that specific directory.                                        
pwd  #Print current directory path.
#result:                                                     
#/home/sysadmin
cd Documents #Move into Documents directory.
#result:                                              
#/Documents$ 
cd School/Art #Move into nested directories.    
#result:
#/Documents/School/Art$ 
pwd #Print current directory path.
#result:                               
#/home/sysadmin/Documents/School/Art                                             
cd .. #Move up one directory.         
#result:                     
#/Documents/School$ 
cd ~ #Go to home directory. 
ls ##Lists the contents of the current directory.
#result:                                                        
#Desktop  Documents  Downloads  Music  Pictures  Public  Templates  Videos       
ls -l /var/log/ #Detailed list of log files. 
#result:                                        
#total 824                                                                       
#-rw-r--r-- 1 root   root  18047 Dec 20  2017 alternatives.log                   
#drwxr-x--- 2 root   adm      88 Dec 20  2017 apache2                            
#drwxr-xr-x 1 root   root     53 Dec 20  2017 apt                                
#-rw-r----- 1 syslog adm     703 May  4 01:17 auth.log                           
#-rw-r--r-- 1 root   root  47816 Dec  7  2017 bootstrap.log                      
#-rw-rw---- 1 root   utmp      0 Dec  7  2017 btmp                               
#-rw-r----- 1 syslog adm     334 May  4 01:17 cron.log                           
#-rw-r----- 1 root   adm   85083 Dec 20  2017 dmesg                              
#-rw-r--r-- 1 root   root 325238 Dec 20  2017 dpkg.log    
ls -lt /var/log #Sort by modification time (newest first). 
#reulr:                                         
#total 824                                                                       
#-rw-r----- 1 syslog adm   15605 May  4 02:08 syslog                             
#-rw-r----- 1 syslog adm     703 May  4 01:17 auth.log                           
#-rw-r----- 1 syslog adm     334 May  4 01:17 cron.log                           
#-rw-rw-r-- 1 root   utmp 292584 May  4 01:08 lastlog                            
#-rw-rw-r-- 1 root   utmp    384 May  4 01:08 wtmp                               
#-rw-r----- 1 syslog adm     106 May  4 01:08 kern.log                           
#-rw-r--r-- 1 root   root  18047 Dec 20  2017 alternatives.log                   
#-rw-r--r-- 1 root   root  32064 Dec 20  2017 faillog                            
#-rw-r----- 1 root   adm   85083 Dec 20  2017 dmesg                              
#-rw-r--r-- 1 root   root 325238 Dec 20  2017 dpkg.log                           
#drwxr-x--- 2 root   adm      88 Dec 20  2017 apache2                            
#drwxr-xr-x 1 root   root     53 Dec 20  2017 apt                                
#-rw-r--r-- 1 root   root  47816 Dec  7  2017 bootstrap.log                      
#drwxr-xr-x 2 root   root     50 Dec  7  2017 fsck                               
#-rw-rw---- 1 root   utmp      0 Dec  7  2017 btmp                               
#drwxr-xr-x 2 root   root     10 Apr 11  2014 upstart  
ls -lSr /var/log #Sort by size (smallest first).  
#result:                                       
#total 824                                                                       
#-rw-rw---- 1 root   utmp      0 Dec  7  2017 btmp                               
#drwxr-xr-x 2 root   root     10 Apr 11  2014 upstart                            
#drwxr-xr-x 2 root   root     50 Dec  7  2017 fsck                               
#drwxr-xr-x 1 root   root     53 Dec 20  2017 apt                                
#drwxr-x--- 2 root   adm      88 Dec 20  2017 apache2                            
#-rw-r----- 1 syslog adm     106 May  4 01:08 kern.log                           
#-rw-r----- 1 syslog adm     334 May  4 01:17 cron.log                           
#-rw-rw-r-- 1 root   utmp    384 May  4 01:08 wtmp                               
#-rw-r----- 1 syslog adm     703 May  4 01:17 auth.log                           
#-rw-r----- 1 syslog adm   15605 May  4 02:08 syslog                             
#-rw-r--r-- 1 root   root  18047 Dec 20  2017 alternatives.log                   
#-rw-r--r-- 1 root   root  32064 Dec 20  2017 faillog                            
#-rw-r--r-- 1 root   root  47816 Dec  7  2017 bootstrap.log                      
#-rw-r----- 1 root   adm   85083 Dec 20  2017 dmesg                              
#-rw-rw-r-- 1 root   utmp 292584 May  4 01:08 lastlog                            
#-rw-r--r-- 1 root   root 325238 Dec 20  2017 dpkg.log   
ls -r /var/log  #Reverse order.
#result:                                          
#wtmp     lastlog   faillog   cron.log       auth.log  alternatives.log          
#upstart  kern.log  dpkg.log  btmp           apt                                 
#syslog   fsck      dmesg     bootstrap.log  apache2      
su - #Switch to root user (asks for password).
#result:                                                      
#Password:                                                                                                                         
exit #Exit session.
#result:                                                          
#logout                                                                          
sl #Runs a program (train animation), fails without permission.
#result:                                                        
#-bash: /usr/bin/sl: Permission denied                                           
su - #Switch to root user (asks for password).
#result:                                                      
#Password:                                                                       
sl #Runs a program (train animation), fails without permission.                                                           
exit  
#result:                                                 
#logout                                                                          
sudo sl #Runs the command with admin privileges.
#result:
#[sudo] password for sysadmin: 
cd ~/Documents
#result:                                            
#sysadmin@localhost:~/Documents$ 
ls -l hello.sh #Shows file details and permissions.                                 
#-rw-r--r-- 1 sysadmin sysadmin 647 Dec 20  2017 hello.sh    
cd ~/Documents #Change directory to the “Documents” folder inside your home directory.  
#result:                                           
#sysadmin@localhost:~/Documents$ ls -l hello.sh                                  
#-rw-r--r-- 1 sysadmin sysadmin 647 Dec 20  2017 hello.sh                        
cd #It takes you directly to your home directory    
#result:                                           
#sysadmin@localhost:~$ cd ~/Documents                                            
ls -l hello.sh #Shows file details and permissions.
#result:                                   
#-rw-r--r-- 1 sysadmin sysadmin 647 Dec 20  2017 hello.sh                        
./hello.sh  #Executes the script.
#result:                                      
#-bash: ./hello.sh: Permission denied                                            
chmod u+x hello.sh #Adds execute permission for the user.                             
ls -l hello.sh  #Shows file details and permissions.
#result:                                  
#-rwxr--r-- 1 sysadmin sysadmin 647 Dec 20  2017 hello.sh                        
./hello.sh   #Executes the script.
#result:
# ______________                                                                 
#( Hello World! )                                                                
#--------------                                                                 
#       \                                                                       
#         \                                                                      
#          <(^)                                                                 
#           ( )   
cat animals.txt #Displays entire file.  
#result:                                 
#1 retriever                                                                     
#2 badger                                                                        
#3 bat                                                                           
#4 wolf                                                                          
#5 eagle                                 
cat alpha.txt #Displays alphabet text.   
#result:                               
#A is for Apple                                                                  
#B is for Bear                                                                   
#C is for Cat                                                                    
#D is for Dog                                                                    
#E is for Elephant                                                               
#F is for Flower                                                                 
#G is for Grapes                                                                 
#H is for Happy                                                                  
#I is for Ink                                                                    
#J is for Juice                                                                  
#K is for Kangaroo                                                               
#L is for Lol                                                                    
#M is for Monkey                                                                 
#N is for Nickel                                                                 
#O is for Oval                                                                   
#P is for Pickle                                                                 
#Q is for Quark                                                                  
#R is for Rat                                                                    
#S is for Sloth                                                                  
#T is for Turnip                                                                 
#U is for Up                                                                     
#V is for Velvet                                                                 
#W is for Walrus                                                                 
#X is for Xenon                                                                  
#Y is for Yellow                                                                 
#Z is for Zebra 
head alpha.txt #Shows first 10 lines.
#result:                                
#A is for Apple                                                                     
#B is for Bear                                                                   
#C is for Cat                                                                    
#D is for Dog                                                                    
#E is for Elephant                                                               
#F is for Flower                                                                 
#G is for Grapes                                                                 
#H is for Happy                                                                  
#I is for Ink                                                                    
#J is for Juice                      
tail alpha.txt #Shows last 10 lines. 
#result                                 
#Q is for Quark                                                                  
#R is for Rat                                                                    
#S is for Sloth                                                                  
#T is for Turnip                                                                 
#U is for Up                                                                     
#V is for Velvet                                                                 
#W is for Walrus                                                                 
#X is for Xenon                                                                  
#Y is for Yellow                                                                 
#Z is for Zebra                       
head -n 5 alpha.txt #First 5 lines. 
#result:                            
#A is for Apple                                                                  
#B is for Bear                                                                   
#C is for Cat                                                                    
#D is for Dog                                                                    
#E is for Elephant      
tail -n 5 alpha.txt  #Last 5 lines. 
#result:                          
#V is for Velvet                                                                 
#W is for Walrus                                                                 
#X is for Xenon                                                                  
#Y is for Yellow                                                                 
#Z is for Zebra                                   
cp /etc/passwd . #Copies the system passwd file to current directory.                               
ls  
#result:                                            
#School            alpha-third.txt  hidden.txt    numbers.txt  red.txt           
#Work              alpha.txt        letters.txt   os.csv                         
#adjectives.txt    animals.txt      linux.txt     passwd                         
#alpha-first.txt   food.txt         longfile.txt  people.csv                     
#alpha-second.txt  hello.sh         newhome.txt   profile.txt 
dd if=/dev/zero of=/tmp/swapex bs=1M count=50 #Creates a 50 MB file filled with zeros.   
#result:        
#50+0 records in                                                                 
#50+0 records out                                                                
#52428800 bytes (52 MB) copied, 0.0285238 s, 1.8 GB/s  