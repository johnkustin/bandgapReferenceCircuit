#!/usr/bin/env python
import sys
# ==================================================
# EDIT THE FOLLOWING PATH TO POINT TO YOUR DIRECTORY
# ==================================================
sys.path.append('/home/kustinj/ee272b/pyMOSChar')
# ==================================================

import charMOS
import numpy as np

# Specify the name of the MOSFET model. Simple way to do so
# is to create a schematic in Virtuoso that contains both
# nmos and pmos transistors. Then generate the netlist in
# ADE. You'll then be able to view the netlist and see what
# the name of the model is.
nmos = "sky130_fd_pr__nfet_01v8"
pmos = "sky130_fd_pr__pfet_01v8_hvt"

# Specify the MOSFET width in microns.
width = 0.65*1e6


# Specify the MOSFET lengths you're interested
# in. The following code creates an array of
# values from 0.1 to 5.1 in steps of 0.1. Note
# that the arange() function omits the last value
# so if you call np.arange(0.1, 5.1, 0.1), the
# last value in the array will be 0.5.
# MOS lengths are in microns. Don't keep the
# step size too small. Fine steps will use a 
# LOT of RAM can cause the machine to hang!
#                     start, stop, step
mosLengths = np.arange(0.15, 4.1, 0.1)*1e6

## Example 2 for lenghs
#mosLengths = np.concatenate(
#np.arange(0.1, 1, 0.1),
#np.arange(1, 10, 0.5),
#np.arange(10, 100, 10))

# Initialize the characterization process. Modify
# the values below as per your requirements. Ensure
# that the step values aren't too small. Otherwise
# your RAM will get used up.
charMOS.init(
simulator='ngspice',
mosLengths=mosLengths,
modelFiles=("/afs/ir.stanford.edu/class/ee272/skywater-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice",),
modelN=nmos,
modelP=pmos,
simOptions="",
corners=("tt",),
subcktPath="",
datFileName="mosSKY130__W{0}u.dat".format(width),
vgsMax=1.95,
vgsStep=20e-3,
vdsMax=1.95,
vdsStep=20e-3,
vsbMax=1.95,
vsbStep=550e-3,
numfing=1,
temp=300,
width=width)

# This function call finally generates the required database.
charMOS.genDB()

