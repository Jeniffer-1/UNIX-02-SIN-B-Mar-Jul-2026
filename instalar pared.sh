sudo apt update #Updates the list of available packages from the repositories. It doesn't install anything, it just refreshes the information.
sudo apt upgrade #Install the available updates for the packages you already have installed.
sudo apt install parted #Install the GNU Parted program, which is used to create, delete, and modify disk partitions.
sudo parted -l && echo -e "/n---/n" && lsblk -f && echo -e"/n---/n" #It's a command to check how your disks are organized in Linux.