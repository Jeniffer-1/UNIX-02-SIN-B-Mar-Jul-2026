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
