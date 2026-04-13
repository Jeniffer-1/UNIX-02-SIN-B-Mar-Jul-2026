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