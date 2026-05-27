#view principal group
id
#uid=0(root) gid=0(root) grupos=0(root)
id -gn #only the main group name create a file
#root
#create a file and see which group inherits
touch ~/test_gupo_heredado.txt
ls -la ~/test_gupo_heredado.txt
#-rw-r--r-- 1 root root 0 may 27 12:59 /root/test_gupo_heredado.txt
#see the current group
echo "grupo actual:$(id -gn)"
#grupo actual:root
#create a file before newgrp
touch ~/antes_de_newgrp.txt
ls -la ~/antes_de_newgrp.txt
#-rw-r--r-- 1 root root 0 may 27 13:06 /root/antes_de_newgrp.txt
#install
apt install util-linux-extra
groupadd desarrolladores #create group
adduser root desarrolladores
newgrp  desarroladores #change group
#verify that the active group changed
id -gn
#desarrolladores
echo "nuevo grupo activo:$(id -gn)"
#nuevo grupo activo:desarrolladores
                                    