import lookupMOS as lk
import numpy as np
import matplotlib.pyplot as plt

filename = 'data/mosSKY130__W650000.0u.lvt.dat'
lk.init(filename)
VGS = np.arange(0, 1.8, 20e-3)
# for p in mid:
#     plt.plot(VGS, p)
# plt.show()
# VDS = np.arange(0, 1.8, 20e-3)

# mid = lk.lookup('nfet', 'id', vds=VDS, vsb=0, vgs=[0.8, 1.2, 1.8])
# for p in mid:
#     plt.plot(VDS, mid)
# plt.show()
print('Available Lenghts: {}'.format(lk.mosDat['nfet']['length']))
id = lk.lookup('pfet', 'id', vds=1.8, l=np.arange(1,4.5,0.5)*1e6,vsb=0, vgs=VGS)
gm = lk.lookup('pfet', 'gm', vds=1.8, l=np.arange(1,4.5,0.5)*1e6,vsb=0, vgs=VGS)
vt = lk.lookup('pfet', 'vt', vds=1.8, l=np.arange(1,4.5,0.5)*1e6,vsb=0, vgs=VGS)
fT = lk.lookup('pfet', 'gm/cgg', vds=1.8, l=np.arange(1,4.5,0.5)*1e6,vsb=0, vgs=VGS)/2/np.pi

fig, ax1 = plt.subplots(2)

ax1[0].set_xlabel('Vov (V)')
ax1[0].set_ylabel('gm/Id (S/A)')
ax1[0].set_title('MOSFET Tradeoff: gm/Id vs. fT. L = 1um...4um')
lns1 = []
lns2 = []
gmonid = gm/id
for i,gmid in enumerate(gmonid):
    #lns1.append(ax1[0].plot(VGS-vt[i], gmid, 'bo--', label='gm/Id'))
    ax1[0].plot(VGS-vt[i], gmid, 'x--')

ax2 = ax1[0].twinx()
ax2.set_ylabel('fT (GHz)')

for i, f in enumerate(fT):
    #lns2.append(ax2.plot(VGS-vth, fT/1e9, 'r+--', label='fT'))
    ax2.plot(VGS-vt[i], f/1e9, '+--')

ax1[0].grid(True)
fig.tight_layout()
# added these three lines
# lns = lns1+lns2
# labs = [l.get_label() for l in lns]
# ax1[0].legend(lns, labs, loc=0)
for gi, f in zip(gmonid, fT):
    ax1[1].plot(gi, gi*f/1e9)

ax1[1].set_xlabel('gm/Id (S/A)')
ax1[1].set_ylabel('gm/Id*fT (S/A * GHz)')
ax1[1].set_title('MOSFET Figure of Merit. L = 1um...4um')
ax1[1].grid(True)
fig.suptitle(filename)
fig, ax = plt.subplots()
ax.set_xlabel('Vgs (V)')
ax.set_ylabel('I (uA)')
ax.set_title('Id vs. Vgs. L=0.15um...4um')
idarr = lk.lookup('pfet', 'id', vds=1.8, l=np.arange(1,4.5,0.5)*1e6, vsb=0, vgs=VGS)
for i,id in enumerate(idarr) :
    ax.plot(VGS, id*1e6, label=str((0.5 * i + 1)/1e6) + ' um')
ax.legend()
plt.show()
