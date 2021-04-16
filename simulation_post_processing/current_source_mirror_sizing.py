# from Murmann slides 214B Winter 2020-21 Lecture 11
# determine gm (design obj)
# Pick L (long channel for current mirror)
# Pick gm/Id (large for low current and low vdsat)
# determine Id (from gm and gm/Id)
# determine W (from Id/W)

# determine gm from design obj
# PNP of 3.4x3.4 emitter area should have Ice between
# 11.56 um^2 * (0.01 to 10) uA/um^2 =
# Ice = (0.1156 uA to 115.6 uA)
# assume gm=10 mS. for a current mirror gm shouldn't matter all that much
import sys
sys.path.append('/tmp/kustinj/ee272b/pyMOSChar')
import lookupMOS as lk
import numpy as np
import matplotlib.pyplot as plt

gm = 100e-6
width = 1 #um
L = 0.705102*1e6 # based on gmid curves. in um without the 1e6. 1e6 is there for LUT compatability
lk.init('/tmp/kustinj/ee272b/pyMOSChar/mosSKY130__W1000000.0u.sky130_fd_pr__nfet_01v8.sky130_fd_pr__pfet_01v8.dat')
VGS = np.arange(0, 1.8, 20e-3)
gmonId = 15 # from looking at gm/id curve for 640nm transistor
Id = gm / gmonId
gmid = lk.lookup('pfet', 'gm/id', vds=1.8/2, vgs=VGS, l=L)
indc = np.abs(gmid - gmonId).argmin()
JDpmos = lk.lookup('pfet', 'id', vds=1.8/2, vgs=VGS, l=L)/width
wpmos = Id/JDpmos[int(indc)]
print('pmos: {} um'.format(wpmos))
print('pmos area {} mm^2'.format(wpmos*(L/1e6) / 1e6))
