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

gm = 10e-3
L = 40 * 16e-9 # based on TSMC. 40 stacked transistors. gate length is 16nm in their FET tech?
lk.init('../pyMOSChar/data/mosSKY130__W650000.0u.dat')
VGS = np.arange(0, 1.8, 20e-3)
gmonId = 25e-3 # from looking at gm/id curve for 640nm transistor
Id = gm / gmonId
id = lk.lookup('nfet', 'id', l=640000,vsb=0, vgs=VGS)
gm = lk.lookup('nfet', 'gm', l=640000,vsb=0, vgs=VGS)
JD = lk.lookup('nfet', 'id/width', l=640e3, vsb=0, vgs=VGS, vds=1.7)*1e12
# plt.semilogy(gm/id, JD)
# plt.show()
W = Id/ JD
print(W)