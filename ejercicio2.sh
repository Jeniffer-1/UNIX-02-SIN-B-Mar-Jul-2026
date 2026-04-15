touch prueba.txt #Create an empty file called prueba.txt
chmod 600 prueba.txt #Change the file 
#permissions to read and write only for the owner.
ls -l prueba.txt #Show the file permissions and details.
#result:
#-rw------- 1 codespace codespace 0 Apr 15 13:34 prueba.txt
chmod 755 prueba.txt #Change permissions so the owner can 
#do everything and others can read and execute.
ls -l prueba.txt #Show the updated file permissions again.
#result:
#-rwxr-xr-x 1 codespace codespace 0 Apr 15 13:34 prueba.txt