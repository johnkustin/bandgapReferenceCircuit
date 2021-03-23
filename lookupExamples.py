import lookupMOS as lk
import numpy as np
import matplotlib.pyplot as plt


lk.init('data/mosSKY130__W650000.0u.dat')
VGS = np.arange(0, 1.8, 20e-3)
mid = lk.lookup('nfet', 'id', vds=[0.8, 1.2, 1.8], vsb=0, vgs=VGS)
for p in mid:
    plt.plot(VGS, p)
plt.show()
VDS = np.arange(0, 1.8, 20e-3)

mid = lk.lookup('nfet', 'id', vds=VDS, vsb=0, vgs=[0.8, 1.2, 1.8])
for p in mid:
    plt.plot(VDS, mid)
plt.show()

id = lk.lookup('nfet', 'id', vsb=0, vgs=VGS)
gm = lk.lookup('nfet', 'gm', vsb=0, vgs=VGS)
vt = lk.lookup('nfet', 'vt', vsb=0, vgs=VGS)
plt.plot(VGS-vt, gm/id)
plt.show()
