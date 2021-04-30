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
nmos = "sky130_fd_pr__nfet_01v8_lvt"
pmos = "sky130_fd_pr__pfet_01v8_lvt"

# Specify the MOSFET width in microns.
width = 1e6


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
#mosLengths = np.arange(0.15, 4.1, 0.1)*1e6

## Example 2 for lenghs
mosLengthsN = (np.concatenate([
np.linspace(0.15, 1, endpoint=False),
np.linspace(1, 10, num=25, endpoint=False),
np.linspace(10, 110, num=10, endpoint=True)]) * 1e6).astype('int')

mosLenghtsP = (np.concatenate([
np.linspace(0.35, 1, endpoint=False),
np.linspace(1, 8, num=35, endpoint=True)]) * 1e6).astype('int')

# Initialize the characterization process. Modify
# the values below as per your requirements. Ensure
# that the step values aren't too small. Otherwise
# your RAM will get used up.
charMOS.init(
simulator='ngspice',
mosLengthsNfet=mosLengthsN,
mosLengthsPfet=mosLenghtsP,
modelFiles=("/afs/ir.stanford.edu/class/ee272/skywater-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice",),
modelN=nmos,
modelP=pmos,
simOptions="",
corners=("tt",),
subcktPath="",
datFileName="mosSKY130__W{0}u.{1}.{2}.lvt.moreLenghtsv2.dat".format(width,nmos,pmos),
vgsMax=1.95,
vgsStep=20e-3,
vdsMax=1.95,
vdsStep=20e-3,
vsbMax=1.95,
vsbStep=550e-3,
numfing=1,
temp=300.15,
width=width)

# This function call finally generates the required database.
charMOS.genDB()

