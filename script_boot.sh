cd / #It takes you to the root of the system
cd /home/codespace #It moves you to a specific route
cd ~ #It takes you to your personal directory.
cd $HOME #It does the same thing as a cd ~
mkdir proyecto #create the project directory
cd proyecto/ #change the project direction
ls -lai #Run it and display the result
#963663 drwxr-xr-x 2 codespace codespace 4096 Apr  6 12:35 .
#918515 drwxr-x--- 1 codespace codespace 4096 Apr  6 12:35 ..
~/proyecto $ stat . #View details of the folder you are in
mkdir -p /tmp/prueba/sub1/tmp/prueba/sub2 #Create folders, including those that do not exist in the path
stat /tmp/prueba #Displays information about that folder (permissions, size, dates)