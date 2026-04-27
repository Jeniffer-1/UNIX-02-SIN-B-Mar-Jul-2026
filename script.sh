ls -a #short option
ls --all #lot option
ls -a / #Displays all files and folders in the root directory, including hidden ones.
#comands, option , arguments
#comand (ls)
#short (-a)
#long (--all) 
#is the root directory the main system folder (/)
ls -l #Lists with details
ls -a #Includes hidden entries
ls -l -a -h #Everything, details, readable sizes
ls -l -ah #Same as the command above
ls -lah #Same, but shorter

#create directory mkdir -- -rf

mkdir -- -rf #name directory
ls #Displays the files and folders in the current directory.
rmdir -- -rf #deletes empty directories
ls #Relist the files.
ls --help #Quick summary (ls)
man ls #Complete manual
#To search, press /; to move, use lowercase (n) to move 
#forward and uppercase (N) to go backward; and to exit, press (q)

man git-clone #This command takes us to the manual
#result of entering the menu and searching
--depth <depth>
           Create a shallow clone with a history truncated to the specified number of
           commits. Implies --single-branch unless --no-single-branch is given to
           fetch the histories near the tips of all branches. If you want to clone
           submodules shallowly, also pass --shallow-submodules.


chmod +x script.sh #Grants execution permission 
#to everyone: user (y), group (g), others (o)
chmod u+x script.sh #Grant execution permission only to the user (owner).
chmod o-r script.sh #Remove read permission for others (or)
chmod u+rw,go-rwx script.sh #Only the owner has access
sudo echo "hola" > /etc/archivo_protegido # It doesn't work because another (sudo)
#command is needed in (/etc/) because it's only on top of (echo).
#result:bash: /etc/archivo_protegido: Permission denied
echo "hola" | sudo tee /etc/archivo_protegido > /dev/null #The command writes "hola" to a protected system file using administrator privileges,
#without displaying anything in the terminal.
cat /etc/archivo_protegido #we see the content
#result : hola
echo "hola" | sudo tee /etc/archivo_protegido #Write "hola" in a protected file and also print it on the screen.
#result: hola
sudo sh -c 'echo "chao" >> /etc/archivo_protegido' #Append "chao" to the end of the 
#protected file using administrator privileges.
cat /etc/archivo_protegido #Display the content of the file
#result chao
#chao
sudo su - #Switch to the root (administrator) 
#user with a full login environment.
exit #Exit the current session
echo "$HOME" #expands the variable
#result: /home/codespace
echo '$HOME' #it takes type string
#result :$HOME
umask #Remove default permissions to make your system more secure.
#result: 0022

touch archivo1 #Create an empty file called file1
mkdir directorio1 #Create a folder/directory called
ls -l #Displays a detailed list of files and folders
#result: total 20
#-rw-rw-rw-  1 codespace root         0 Apr 13 12:26 README.md
#-rw-rw-rw-  1 codespace codespace    0 Apr 27 12:34 archivo1
#drwxrwxrwx+ 2 codespace codespace 4096 Apr 27 12:34 directorio1
#-rw-rw-rw-  1 codespace codespace 1010 Apr 15 13:28 ejercicio1.sh
#-rw-rw-rw-  1 codespace codespace  507 Apr 15 13:39 ejercicio2.sh
#-rwxrwxrwx  1 codespace codespace   45 Apr 15 13:07 hola.sh
#-rwxr-xr-x  1 codespace codespace    0 Apr 15 13:34 prueba.txt
#-rwx------  1 codespace codespace 2594 Apr 27 12:34 script.sh

touch archivo1 #Create an empty file called file2
mkdir directorio1 #Create a folder/directory called
ls -l #Displays a detailed list of files and folders
#result:
#total 24
#-rw-rw-rw-  1 codespace codespace    0 Apr 27 12:34 archivo1
#-rw-rw-rw-  1 codespace codespace    0 Apr 27 12:37 archivo2
#drwxrwxrwx+ 2 codespace codespace 4096 Apr 27 12:34 directorio1
#drwxrwxrwx+ 2 codespace codespace 4096 Apr 27 12:38 directorio2
#-rw-rw-rw-  1 codespace codespace 1010 Apr 15 13:28 ejercicio1.sh
#-rw-rw-rw-  1 codespace codespace  507 Apr 15 13:39 ejercicio2.sh
#-rwxrwxrwx  1 codespace codespace   45 Apr 15 13:07 hola.sh
#-rwxr-xr-x  1 codespace codespace    0 Apr 15 13:34 prueba.txt
#-rwx------  1 codespace codespace 3275 Apr 27 12:37 script.sh


