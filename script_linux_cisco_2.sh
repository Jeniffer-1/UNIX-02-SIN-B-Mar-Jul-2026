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
#Password: netlab123
root@localhost:~# shutdown now                                                  
shutdown: Unable to shutdown system                                             
root@localhost:~#                                                               
Broadcast message from sysadmin@localhost                                       
        (/dev/pts/0) at 1:31 ...                                                
                                                                                
The system is going down for maintenance NOW!                                   
                                                                                
root@localhost:~# date                                                          
Mon Jun  1 01:31:50 UTC 2026                                                    
root@localhost:~#  shutdown 01:51                                               
                                                                                
Broadcast message from sysadmin@localhost                                       
        (/dev/pts/0) at 1:32 ...                                                
                                                                                
The system is going down for maintenance in 19 minutes!   

root@localhost:~# shutdown +1 "Goodbye World!"                                  
                                                                                
Broadcast message from sysadmin@localhost                                       
        (/dev/pts/0) at 1:34 ...                                                
                                                                                
The system is going down for maintenance in 1 minute!                           
Goodbye World!