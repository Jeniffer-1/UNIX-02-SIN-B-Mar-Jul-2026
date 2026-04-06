El sistema  que vamos a construir tiene tres componentes:

**kernel linux** - el núcleo del sistma operativo 
**BusyBox** -Proporciona las utilidades basicas de Unix (ls,pwd, vi, etc). en un solo binario
**Syslinux** - El blootloader que carga todo el arranque


sudo apt update
sudo apt upgrade
sudo apt install -y git vm make gcc libncurses-dev flex bison bc cpio libelf-dev libssl-dev syslinux
dosftools qemu-system-x86

**¿Para que sirve cada paquete?**

-`gcc`, `make` -Compilacion del Kernel y BusyBox
- `libncurses-dev` - menus interactivos de configuracion (`menuconfig`)
- `flex` , `bison` , `bc` -requeridos por el proceso de biuil del kernel 
- `cpio`- para crear el inittramfs
- `libelf-dev` , `libssl-dec` -dependencia de kernel
- `syslinux` - el booloader
- `dosftstools` -para crear el filesystem FAT
- `qemu-system-86` -para probar la imagen sin necesidad de hadware real 

Clona el repositorio del kernel 

git clone --depth 1 https://github.com/torvalds/linux.git
cd linux 
make menuconfig
make -j 2
