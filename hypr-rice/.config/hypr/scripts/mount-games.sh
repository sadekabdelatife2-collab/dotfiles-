#!/bin/bash
sudo ldmtool create all
sudo ntfsfix -d /dev/mapper/ldm_vol_*
sudo mount -t ntfs-3g -o remove_hiberfile,uid=1000,gid=1000 /dev/mapper/ldm_vol_* /home/sadek/Games
