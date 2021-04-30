import sys
sys.path.append('/tmp/kustinj/ee272b/pyMOSChar')
import spice3read as s3r
import lookupMOS as lk
import numpy as np
import os

filename = '../pyMOSChar/mosSKY130__W1000000.0u.sky130_fd_pr__nfet_01v8_lvt.sky130_fd_pr__pfet_01v8_lvt.moreLengths.dat'
lk.init(filename)
VGS = np.arange(0, (1.8+20e-3), step=20e-3)

gmpmos = lk.lookup('pfet','gm',vds=0.9,vgs=VGS,l=2e6)
idpmos = lk.lookup('pfet','id',vds=0.9,vgs=VGS,l=2e6)
JDpmos = idpmos / 1 # LUTs generated with width=1um
gmidpmos = lk.lookup('pfet','gm/id',vds=0.9,vgs=VGS,l=2e6)
gmidpmosof20index = np.abs(gmidpmos-20).argmin()

current = np.float(10e-6)
currentmirrorwidth = current/JDpmos[gmidpmosof20index]
print('currentmirrorwidth {}'.format(currentmirrorwidth))

gmidnmos = lk.lookup('nfet','gm/id',vds=0.9,vgs=VGS,l=2e6)
idnmos = lk.lookup('nfet','id',vds=0.9,vgs=VGS,l=2e6)
JDnmos = idnmos/1
gmidnmosof20index = np.abs(gmidnmos-20).argmin()
gmidnmosof25index = np.abs(gmidnmos-25).argmin()

dcvgate = VGS[gmidpmosof20index]
vgsm8 = dcvgate
activeloadgmindex = np.abs(vgsm8-VGS).argmin()
gmidactiveload = gmidpmos[activeloadgmindex]

biascurrent = current/5
activeloadwidth = (biascurrent/2)/JDpmos[activeloadgmindex]
print('activeloadwidth {}'.format(activeloadwidth))

nmoscurrentmirrorwidth = biascurrent/JDnmos[gmidnmosof20index]
print('nmoscurrentmirrorwidth {}'.format(nmoscurrentmirrorwidth))

nmosamplifierwidth = (biascurrent/2)/JDnmos[gmidnmosof25index]
print('nmosamplifierwidth {}'.format(nmosamplifierwidth))

if os.path.exists('/home/users/kustinj/.xschem/simulations/tsmc_bandgap_real.raw'):
    print('sim results')

    opdat = s3r.read('/home/users/kustinj/.xschem/simulations/tsmc_bandgap_real.raw')

    gms = [entry for entry in opdat.keys() if '[gm]' in entry]
    ids = [entry for entry in opdat.keys() if '[id]' in entry]
    ids.remove('i(@m.xm10.msky130_fd_pr__nfet_01v8_lvt[id])')
    gms.sort()
    ids.sort()
    gmids = np.asarray([opdat[gm]/opdat[ids[i]] for i,gm in enumerate(gms)]).flatten()
    vdsats = []
    for i, x in enumerate(gms):
        gm = opdat[x]
        id = opdat[ids[i]]
        vdsats.append(2/(gm/id))

    gmidm1 = gmids[0]
    gmidm2 = gmids[2]
    gmidm3 = gmids[3]
    gmidm8 = gmids[8]
    gmidm4 = gmids[4]
    gmidm9 = gmids[9]
    gmidm5 = gmids[5]
    gmidm6   = gmids[6]
    gmidm7   = gmids[7]
    gmidm13  = gmids[1]

    indx = range(1,10)
    indx.insert(1,13)
    for i, n in enumerate(indx):
        print('gmid{} = {}'.format(n, gmids[i]))
    vdsats = np.asarray(vdsats).flatten()
    print('vdsats')
    for i, n in enumerate(indx):
        print('vdsat{} = {}'.format(n,vdsats[i]))

    vdd = opdat['v(vdd)']
    va = opdat['v(va)']
    vb = opdat['v(vb)']
    vbg = opdat['v(vbg)']
    vgate = opdat['v(vgate)']
    vq = opdat['v(vq)']
    vx = opdat['v(vx)']
    vg = opdat['v(vg)']
    vdsmargin1 = vdd - va - vdsats[0]
    vdsmargin13 = vdd - vx - vdsats[1]
    vdsmargin2 = vdd - vb - vdsats[2]
    vdsmargin3 = vdd - vbg - vdsats[3]
    vdsmargin4 = vdd - vgate - vdsats[4]
    vdsmargin5 = vgate - vq- vdsats[5]
    vdsmargin6 = vq - vdsats[6]
    vdsmargin7 = vx - vdsats[7]
    vdsmargin8 = vdd - vg - vdsats[8]
    vdsmargin9 = vg - vq - vdsats[9]


    vdsmargins = np.asarray([
        vdsmargin1,
        vdsmargin13,
        vdsmargin2,
        vdsmargin3,
        vdsmargin4,
        vdsmargin5,
        vdsmargin6,
        vdsmargin7,
        vdsmargin8,
        vdsmargin9
    ]).flatten()
    print('vdsmargins')
    for i, n in enumerate(indx):
        print('vds{}margin = {}'.format(n,vdsmargins[i]))

