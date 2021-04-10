import lookupMOS as lk
import numpy as np
import matplotlib.pyplot as plt

filename = 'mosSKY130__W1000000.0u.sky130_fd_pr__nfet_01v8.sky130_fd_pr__pfet_01v8.dat'
lk.init(filename)
VGS = np.linspace(0, 1.8, endpoint=True)
# for p in mid:
#     plt.plot(VGS, p)
# plt.show()
# VDS = np.arange(0, 1.8, 20e-3)

# mid = lk.lookup('nfet', 'id', vds=VDS, vsb=0, vgs=[0.8, 1.2, 1.8])
# for p in mid:
#     plt.plot(VDS, mid)
# plt.show()
print('Available Lenghts: {}'.format(lk.mosDat['nfet']['length']))
lengths = [0.15, 0.705102, 0.9250000]
types = ['pfet', 'nfet']
for typ in types:
    id = lk.lookup(typ, 'id', l=[l*1e6 for l in lengths], vds=1.8 ,vsb=0, vgs=VGS)
    gm = lk.lookup(typ, 'gm', l=[l*1e6 for l in lengths], vds=1.8,vsb=0, vgs=VGS)
    vt = lk.lookup(typ, 'vt', l=[l*1e6 for l in lengths], vds=1.8,vsb=0, vgs=VGS)
    fT = lk.lookup(typ, 'gm/cgg', l=[l*1e6 for l in lengths], vds=1.8, vgs=VGS)/2/np.pi

    fig, ax1 = plt.subplots(3)

    ax1[0].set_xlabel('Vov (V)')
    ax1[0].set_ylabel('gm/Id (S/A)')
    ax1[0].set_title('{} Tradeoff: gm/Id vs. fT.'.format(typ))
    lns1 = []
    lns2 = []
    gmonid = [gm[j]/id[j] for j in range(len(lengths))]
    fom = [gmonid[i]*fT[i]/1e9 for i in range(len(lengths))]
    for i, gmid in enumerate(gmonid):
        lns1.append(ax1[0].plot(VGS-vt[i], gmid, 'o--', label=lengths[i]))
        # ax1[0].plot(VGS-vt[i], gmid, 'x--', label=lengths[i])
    ax1[0].legend()
    ax2 = ax1[0].twinx()
    ax2.set_ylabel('fT (GHz)')

    for i, f in enumerate(fT):
        lns2.append(ax2.plot(VGS-vt[i], f/1e9, '+--', label='fT'))
        # ax2.plot(VGS-vt[i], f/1e9, '+--', label=lengths[i])

    ax1[0].grid(True)
    fig.tight_layout()
    # added these three lines
    # lns = lns1+lns2
    # labs = [l.get_label() for l in lns[0]]
    # ax1[0].legend(lns, labs, loc=0)
    for i, gi in enumerate(gmonid):
        ax1[1].plot(gi, gi*fT[i]/1e9, 'o--', label=lengths[i])
    ax1[1].legend()
    for i, gi in enumerate(gmonid):
        ax1[2].plot(VGS-vt[i], gi*fT[i]/1e9, 'o--', label=lengths[i])
    ax1[2].legend()

    ax1[1].set_xlabel('gm/Id (S/A)')
    ax1[1].set_ylabel('gm/Id*fT (S/A * GHz)')
    ax1[1].set_title('{} Figure of Merit.'.format(typ))
    ax1[1].grid(True)
    ax1[2].set_xlabel('Vov (V)')
    ax1[2].set_ylabel('gm/Id*fT (S/A * GHz)')
    ax1[2].set_title('{} Figure of Merit.'.format(typ))
    ax1[2].grid(True)
    fig.suptitle(filename + ' W = 1um')
    fig, ax = plt.subplots()
    ax.set_xlabel('Vgs (V)')
    ax.set_ylabel('I (uA)')
    ax.set_title('{} Id vs. Vgs. W = 1um'.format(typ))
    idarr = lk.lookup(typ, 'id', l=[l*1e6 for l in lengths], vds=1.8, vsb=0, vgs=VGS)
    for i,id in enumerate(idarr) :
        ax.plot(VGS, id*1e6, label=str((0.5 * i + 1)/1e6) + ' um')
    ax.legend()
plt.show()
