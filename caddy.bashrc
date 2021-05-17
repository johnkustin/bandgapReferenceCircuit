#!/bin/bash
module load base ic

# copy the magic config file if it doesn't exist already
cp -n /afs/ir.stanford.edu/class/ee272/PDKS/sky130A/libs.tech/magic/sky130A.magicrc .magicrc

# set the PDKPATH variable
#export PDKPATH=/afs/ir.stanford.edu/class/ee272/PDKS/sky130A
export PDKPATH=/tmp/kustinj/ee272bclone/open_pdks/sky130A

# define function to add to path
# ref: https://superuser.com/a/39995
pathadd() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="${PATH:+"$PATH:"}$1"
    fi
}

# add ngspice to path
pathadd /cad/ngspice/33/bin

# add gaw to path
pathadd /cad/gaw3/bin

# add netgen to path
pathadd /tmp/kustinj/ee272bclone/netgen/bin

# add magic to path
pathadd /tmp/kustinj/ee272bclone/magic/bin
