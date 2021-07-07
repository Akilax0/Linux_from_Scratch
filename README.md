# LinuxFromScratch 

## Overview

### Bootloader

Mainboard 

    - CPU
    - HDD
    - RAM
    - BIOS(EEPROM)
          
    BenEater's videos on hardware
        [https://eater.net/6502](https://eater.net/6502)
        [https://eater.net/8bit] (https://eater.net/6502)
            

    At Computer Start Mainboard runs firmware on BIOS. Transfers to RAM. CPU runs this code by setting IP to this memory space.
    This code tells computer to talk to the HDD. First sector of disk MBR copied to RAM. Firmware sets IP to MBR -> Bootloader
    
    Bootloader looks at /boot/kernel and copies to RAM. IP set to kernel. 
    Kernel runs initialization program old -> init(systemV)
                                       now -> systemd
    /etc/fstab entry to mount root partiton

    BIOS will be untouched , so are hardwired. 
    Provide Harddrive data MBR,Boot,Root 
    We will create this harddrive.
    10GB at least.30GB to do stuff.



## How?

    MBR : boot (100MB) : root  (rest)
    Divides the process into 3 whole stages


| Build Machine(A)  | Host Machine(B)    |  Target(C) 
| -------------     | ----------------   |-----------
| gcc               | Linux source code  |   /bin
| make              | grub               |   /sbin
|                   | ecoutils gcc make  |   /lib64

         
<br>
Build machine is the machine we have our OS installed we use its toolchain along with source files of B to make the toolchain for B. Once that is done we 

    chroot $LFS                       

where LFS = /mnt/lfs making B its own isolated system.
Finallly we build neccessary files on C. After this process comes the configurations.