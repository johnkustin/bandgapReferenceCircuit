import lookupMOS as lk
import numpy as np
import matplotlib.pyplot as plt


lk.init('data/mosSKY130__W650000L150000_4100000.0u.dat')
VGS = np.arange(0, 1.8, 20e-3)
mid = lk.lookup('nfet', 'id', vds=[0.8, 1.2, 1.8], vsb=0, vgs=VGS)
# for p in mid:
#     plt.plot(VGS, p)
# plt.show()
# VDS = np.arange(0, 1.8, 20e-3)

# mid = lk.lookup('nfet', 'id', vds=VDS, vsb=0, vgs=[0.8, 1.2, 1.8])
# for p in mid:
#     plt.plot(VDS, mid)
# plt.show()

id = lk.lookup('nfet', 'id', vsb=0, vgs=VGS)
gm = lk.lookup('nfet', 'gm', vsb=0, vgs=VGS)
vt = lk.lookup('nfet', 'vt', vsb=0, vgs=VGS)
fT = lk.lookup('nfet', 'gm/cgg', vgs=VGS)/2/np.pi

fig, ax1 = plt.subplots(2)

ax1[0].set_xlabel('Vov (V)')
ax1[0].set_ylabel('gm/Id (S/A)')
ax1[0].set_title('MOSFET Tradeoff: gm/Id vs. fT. L = 150 nm')
lns1 = ax1[0].plot(VGS-vt, gm/id, 'bo--', label='gm/Id')
ax2 = ax1[0].twinx()
ax2.set_ylabel('fT (GHz)')
lns2 = ax2.plot(VGS-vt, fT/1e9, 'r+--', label='fT')
ax1[0].grid(True)
fig.tight_layout()
# added these three lines
lns = lns1+lns2
labs = [l.get_label() for l in lns]
ax1[0].legend(lns, labs, loc=0)
ax1[1].plot(gm/id, gm/id*fT/1e9)
ax1[1].set_xlabel('gm/Id (S/A)')
ax1[1].set_ylabel('gm/Id*fT (S/A * GHz)')
ax1[1].set_title('MOSFET Figure of Merit. L = 150 nm')
ax1[1].grid(True)
plt.show()
