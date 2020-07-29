# install qemu on ubuntu: installs both arm and arm64 hardware
sudo apt-get update -y
sudo apt-get install -y qemu-system-arm

# supported machines
qemu-system-arm -M help
qemu-system-aarch64 -M help

# build from sources
git clone https://git.qemu.org/git/qemu.git
# or
git clone git://git.linaro.org/qemu/qemu-linaro.git
cd qemu
git submodule init
git submodule update --recursive
./configure --target-list=arm-softmmu,arm-linux-user
make -j 12
sudo make install

# linux
git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git

#qemu linux vexpress config
vexpress_defconfig

# linux build commands for vexpress a9 
# vexpress: versatile express has both a9 and a15 variants
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabi-
make vexpress_defconfig
make all -j4					
make zImage dtbs -j40


# create ramdisk with simple hello world pgm as init process

#include <stdio.h>
void main() {
  printf("Hello World!\n");
  while(1);
}

# compile above program as init and pack it as initramfs
arm-linux-gnueabi-gcc -static init.c -o init
echo init|cpio -o --format=newc > initramfs


# busybox
# busybox binaries: /home/vinai/projects/bbb/out/filesystem
cd /home/vinai/projects/bbb/out/filesystem
find . | cpio -o --format=newc > ../rootfs.img
cd ..
gzip -c rootfs.img > rootfs.img.gz

# qemu-system-arm -M vexpress-a9 -kernel linux-4.9/arch/arm/boot/zImage -initrd initramfs -append "console=tty1" -dtb ~/data/linux/arch/arm/boot/dts/vexpress-v2p-ca9.dtb
# open in current console
qemu-system-arm -M vexpress-a9 -m 512M -dtb extra_folder/vexpress-v2p-ca9.dtb -kernel extra_folder/zImage -nographic -append "root=/dev/mmcblk0 rw console=ttyAMA0" -sd a9rootfs.ext3
# open in new window(maybe GUI)
qemu-system-arm -M vexpress-a9 -m 512M -dtb extra_folder/vexpress-v2p-ca9.dtb -kernel extra_folder/zImage -append "root=/dev/mmcblk0 rw" -sd a9rootfs.ext3

# Directory: /home/vinai/projects/qemu/binaries
# worked for me with simple initramfs
qemu-system-arm -M vexpress-a9 -m 512M -dtb vexpress-v2p-ca9.dtb -kernel zImage -nographic -initrd initramfs -append "console=ttyAMA0"
# with busybox
qemu-system-arm -M vexpress-a9 -m 512M -dtb vexpress-v2p-ca9.dtb -kernel zImage -nographic -initrd rootfs.img.gz -append "console=ttyAMA0 root=/dev/ram rdinit=/sbin/init"
# with kgdb these options didnot helped while booting up. As per stackoverflow
# these help in running kernel. 
# [Reference]:
# https://stackoverflow.com/questions/22004616/how-to-debug-the-linux-kernel-with-qemu-and-kgdb
qemu-system-arm -M vexpress-a9 -m 512M -dtb vexpress-v2p-ca9.dtb -kernel zImage -nographic -initrd rootfs.img.gz -append "console=ttyAMA0 root=/dev/ram rdinit=/sbin/init 'kgdbwait kgdboc=ttyS0,115200' -serial tcp::1234,server,nowait"
# Run GDB with from the root of the Linux kernel source tree with:
gdb -ex 'file vmlinux' -ex 'target remote localhost:1234'
# In GDB: run 'c' and the boot should finish.
(gdb) c
# In QEMU: And GDB should break.
echo g > /proc/sysrq-trigger
# Now we are done, you can use GDB as usual:
(gdb) b sys_write
(gdb) c
# with kgdb -S -s option, with these option terminal freezes, go to other
# terminal and run arm-linux-gnueabihf-gdb
# Especially the arguments -s -S are notable here, since the former makes sure
# Qemu’s built-in debugger is available at port 1234 and the latter stops the
# machine. This now allows to connect to Qemu using gdb. I use the gdb from my
# ARM cross compiler toolchain. Once I have a gdb prompt, lets immediately
# enable gdb’s automatic disassembler on next line before connecting:
qemu-system-arm -M vexpress-a9 -m 512M -dtb vexpress-v2p-ca9.dtb -kernel zImage -nographic -initrd rootfs.img.gz -s -S -append "console=ttyAMA0 root=/dev/ram rdinit=/sbin/init"

# https://blog.printk.io/2019/06/arm-linux-kernel-early-startup-code-debugging/
qemu-system-arm -s -S -M vexpress-a9 -m 512M -nographic -monitor none -serial stdio -kernel zImage -dtb vexpress-v2p-ca9.dtb -initrd rootfs.img.gz -append "console=ttyAMA0 root=/dev/ram rdinit=/sbin/init earlycon earlyprintk"

# and on other terminal
arm-linux-gnueabihf-gdb
# execute following command on (gdb) prompt to connect to emulator
(gdb) target remote localhost:1234

# config for kgdb
CONFIG_HAVE_ARCH_KGDB=y
CONFIG_KGDB=y
CONFIG_KGDB_SERIAL_CONSOLE=y

$ arm-linux-gnueabihf-gdb 
(gdb) set disassemble-next-line on
(gdb) show disassemble-next-line
(gdb) target remote :1234
