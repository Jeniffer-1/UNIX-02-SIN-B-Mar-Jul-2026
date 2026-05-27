#view principal group
id
#result
#uid=0(root) gid=0(root) grupos=0(root)

id -gn #only the main group name create a file
#result
#root

#create a file and see which group inherits
touch ~/test_gupo_heredado.txt
ls -la ~/test_gupo_heredado.txt
#result
#-rw-r--r-- 1 root root 0 may 27 12:59 /root/test_gupo_heredado.txt

#see the current group
echo "grupo actual:$(id -gn)"
#result
#grupo actual:root

#create a file before newgrp
touch ~/antes_de_newgrp.txt
ls -la ~/antes_de_newgrp.txt
#result
#-rw-r--r-- 1 root root 0 may 27 13:06 /root/antes_de_newgrp.txt

#install
apt install util-linux-extra
groupadd desarrolladores #create group
adduser root desarrolladores
newgrp  desarroladores #change group

#verify that the active group changed
id -gn
#result
#desarrolladores
echo "nuevo grupo activo:$(id -gn)"
#result
#nuevo grupo activo:desarrolladores
                                    
#create file in the subshell
touch ~/dentro_de_newgrp.txt
ls -la ~/dentro_de_newgrp.txt
#result 
#-rw-r--r-- 1 root desarrolladores 0 may 27 13:32 /root/dentro_de_newgrp.txt  

#crate directori
mkdir -p ~/proyecto_dev/scr
ls -la ~/
#result
#total 64
#drwx------ 1 root root             4096 may 27 13:33 .
#drwxr-xr-x 1 root root             4096 may 27 12:38 ..
#-rw-r--r-- 1 root root                0 may 27 13:06 antes_de_newgrp.txt
#-rw-r--r-- 1 root root             5578 may 24 04:01 .bashrc
#-rw-r--r-- 1 root root              607 may 24 04:01 .bashrc.original
#drwxr-xr-x 3 root root             4096 may 27 12:38 .cache
#drwx------ 3 root root             4096 may 27 12:38 .config
#-rw-r--r-- 1 root desarrolladores     0 may 27 13:32 dentro_de_newgrp.txt
#lrwxrwxrwx 1 root root               47 may 27 12:38 .docker -> /workspaces/.codespaces/.persistedshare/.docker
#drwxr-xr-x 3 root root             4096 may 27 12:38 .dotnet
#drwx------ 4 root root             4096 may 27 12:38 .local
#-rw-r--r-- 1 root root              132 may 15 11:37 .profile
#drwxr-xr-x 3 root desarrolladores  4096 may 27 13:33 proyecto_dev
#drwx------ 2 root root             4096 may 27 12:37 .ssh
#-rw-r--r-- 1 root root                0 may 27 12:59 test_gupo_heredado.txt
#drwxr-xr-x 5 root root             4096 may 27 12:38 .vscode-remote
#-rw------- 1 root root                0 may 27 12:39 .zsh_history
#-rw-r--r-- 1 root root            10975 may 27 12:38 .zshrc

#Exit the newgrp subshell.
exit
#Verify that you have returned to the original group.

id -gn
#result
#root

echo "grupo restaurado: $(id -gn)"   
#result 
#grupo restaurado: root

#compare the two files
ls -la ~/antes_de_newgrp.txt ~/dentro_de_newgrp.txt   
#result   
#-rw-r--r-- 1 root root            0 may 27 13:06 /root/antes_de_newgrp.txt
#-rw-r--r-- 1 root desarrolladores 0 may 27 13:32 /root/dentro_de_newgrp.txt

#newgrp creates a subshell - this is demonstrable
echo "PID del shell actual: $$"
#result
#PID del shell actual: 20891
echo "PID dentro de newgrp: $$"
#result
#PID dentro de newgrp: 36198

#create a password-protected group
sudo groupadd grupo_restringido
sudo gpasswd grupo_restringido
#result
#Cambiando la contraseña para el grupo grupo_restringido
#Nueva contraseña: 
#Vuelva a introducir la nueva contraseña: 

#If a user does not belong to the group, 
#they can join temporarily if they know the password.
newgrp grupo_restringido