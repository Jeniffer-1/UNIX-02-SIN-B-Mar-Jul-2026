#commands
id #It tells you who you are in the system and what permissions you have.
#result
#uid=0(root) gid=0(root) grupos=0(root)
cat /etc/passwd | head -10 #It shows the first 10 users of the system.
#result:
#root:x:0:0:root:/root:/bin/bash
#daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
#bin:x:2:2:bin:/bin:/usr/sbin/nologin
#sys:x:3:3:sys:/dev:/usr/sbin/nologin
#sync:x:4:65534:sync:/bin:/bin/sync
#games:x:5:60:games:/usr/games:/usr/sbin/nologin
#man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
#lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
#mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
#news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
cat /etc/group | head -10 #Displays the first 10 groups in the system (from the file where they are saved).
groups #Displays the groups to which the current user belongs.
groups $USER #Displays the user groups you specify (in this case, your current user using the $USER variable).
id -u #shows the user ID
id -g #hows the primary group ID
id -G #hows the primary group ID
cat /etc/group #Displays the content of the /etc/group file, which stores all Linux system groups.
#result:
#root:x:0:
#daemon:x:1:
#bin:x:2:
#sys:x:3:
#adm:x:4:
#tty:x:5:
#disk:x:6:
#lp:x:7:
#mail:x:8:
#news:x:9:
#uucp:x:10:
#man:x:12:
#proxy:x:13:
#kmem:x:15:
#dialout:x:20:
#fax:x:21:
#voice:x:22:
#cdrom:x:24:
#floppy:x:25:
#tape:x:26:
#sudo:x:27:
#audio:x:29:
#dip:x:30:
#www-data:x:33:
#backup:x:34:
#operator:x:37:
#list:x:38:
#irc:x:39:
#src:x:40:
#shadow:x:42:
#utmp:x:43:
#video:x:44:
#sasl:x:45:
#plugdev:x:46:
#staff:x:50:
#games:x:60:
#users:x:100:
#nogroup:x:65534:
#lpadmin:x:999:
#systemd-journal:x:998:
#systemd-network:x:997:
#debian-tor:x:101:
#tcpdump:x:996:
cat /etc/group | grep users #shows information about the “users” group.
#result:
#users:x:100:
cat /etc/gshadow #displays the file with group passwords and security info
#result:
#root:*::
#daemon:*::
#bin:*::
#sys:*::
#adm:*::
#tty:*::
#disk:*::
#lp:*::
#mail:*::
#news:*::
#uucp:*::
#man:*::
#proxy:*::
#kmem:*::
#dialout:*::
#fax:*::
#voice:*::
#cdrom:*::
#floppy:*::
#tape:*::
#sudo:*::
#audio:*::
#dip:*::
#www-data:*::
#backup:*::
#operator:*::
#list:*::
#irc:*::
#src:*::
#shadow:*::
#utmp:*::
#video:*::
#sasl:*::
#plugdev:*::
#staff:*::
#games:*::
#users:*::
#nogroup:*::
#lpadmin:!*::
#systemd-journal:!*::
#systemd-network:!*::
#debian-tor:!::
#tcpdump:!*::
mkdir ~/proyecto_unix/ #creates a folder called proyecto_unix in your home directory.
ls -la ~/proyecto_unix/ #shows the contents of that folder with details.
#result:
#total 8
#drwxr-xr-x 2 root root 4096 may  4 13:38 .
#drwx------ 1 root root 4096 may  4 13:38 ..