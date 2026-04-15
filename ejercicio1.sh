echo '#!/bin/sh' > hola.sh #Create the file hola.sh 
#and write the first line of the scrip
echo 'echo "hola desde mi primer script"' >> hola.sh #Append a line to the file that prints a message.
cat hola.sh #Display the content of the script.
#result #!/bin/sh
#echo "hola desde mi primer script"
./hola.sh #Run the script.
#result 
#bash: ./hola.sh: Permission denied

ls -l hola.sh #Show the details of the file hola.sh 
#(permissions, size, etc.).
#result:
#-rw-rw-rw- 1 codespace codespace 45 Apr 15 13:07 hola.sh
chmod +x hola.sh
#Give execute permission to the file.
ls -l hola.sh #Show the details again to check the permissions.
#result
#-rwxrwxrwx 1 codespace codespace 45 Apr 15 13:07 hola.sh
./hola.sh #Run the script.
#result:
#hola desde mi primer script

ls /etc #List all the files and folders inside

touch /etc/prueba.txt  #Use sudo to create the file
mkdir ~/mi_carpeta #“File exists” error means
apt install cowsay #Install the Cowsay program.
#You need administrator privileges (sudo).
