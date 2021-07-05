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
            

    At Computer Start Mainboard runs firmware on BIOS. Transfers to RAM.
    CPU runs this code by setting IP to this memory space.
    This code tells computer to talk to the HDD. 
    First sector of disk MBR copied to RAM. Firmware sets IP to MBR -> Bootloader
    
    Bootloader looks at /boot/kernel and copies to RAM. IP set to kernel. 
    Kernel runs initialization program old -> init(systemV)
                                       now -> systemd
    /etc/fstab entry to mount root partiton
         
                        
