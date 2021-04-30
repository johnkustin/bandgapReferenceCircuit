import sys
sys.path.append('/tmp/kustinj/ee272b/pyMOSChar')
import spice3read as s3r
import numpy as np


# dc27to0 = s3r.read('/home/users/kustinj/.xschem/simulations/vbg-27-to-neg-0.raw')
# dc27to70 = s3r.read('/home/users/kustinj/.xschem/simulations/vbg-27-to-70.raw')

# vbg27to0 = dc27to0['v(vbg)'][0]
# vbg0to27 = np.flip(vbg27to0)
# vbg28to70 = dc27to70['v(vbg)'][0][1:-1]
# vbg = np.append(vbg0to27, vbg28to70)
# ppm = (vbg[-1]-vbg[0])/vbg[26]/70*1e6
# print(ppm)

tran27 = s3r.read('/home/users/kustinj/.xschem/simulations/tsmc_bandgap_real_27degc_vbg.raw')
tran0 = s3r.read('/home/users/kustinj/.xschem/simulations/tsmc_bandgap_real_0degc_vbg.raw')
tran70 = s3r.read('/home/users/kustinj/.xschem/simulations/tsmc_bandgap_real_70degc_vbg.raw')
vbg27 = tran27['v(vbg)'][0][-1]
vbg0 = tran0['v(vbg)'][0][-1]
vbg70 = tran70['v(vbg)'][0][-1]

ppm = (vbg70-vbg0)/vbg27/70*1e6
print('0, 27, 70 degC')
print('{} {} {}'.format(vbg0, vbg27, vbg70))
print(ppm)