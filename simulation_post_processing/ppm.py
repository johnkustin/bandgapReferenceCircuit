import sys
sys.path.append('../pyMOSChar')
import spice3read as s3r
import numpy as np
import matplotlib.pyplot as plt

tran27 = s3r.read('../sims/tsmc_bandgap_real_27degc_vbg.raw')
tran0 = s3r.read('../sims/tsmc_bandgap_real_0degc_vbg.raw')
tran70 = s3r.read('../sims/tsmc_bandgap_real_70degc_vbg.raw')
vbg27 = tran27['v(vbg)'][0][-1]
vbg0 = tran0['v(vbg)'][0][-1]
vbg70 = tran70['v(vbg)'][0][-1]

ppm = (vbg70-vbg0)/vbg27/70*1e6
print('0, 27, 70 degC')
print('{} {} {}'.format(vbg0, vbg27, vbg70))
print(ppm)
times = [tran0['time'][0], tran27['time'][0], tran70['time'][0]]
maxtime = times[np.asarray([len(x) for x in times]).argmax()]

tranvbg27 = np.interp(maxtime, times[1], tran27['v(vbg)'][0])
tranvbg0 = np.interp(maxtime, times[0], tran0['v(vbg)'][0])
tranvbg70 = np.interp(maxtime, times[2], tran70['v(vbg)'][0])


fig = plt.figure()
ax = fig.add_subplot(111)
ax.plot(maxtime*1e6, tranvbg0, '--b' , label='0 degC')
ax.plot(maxtime*1e6, tranvbg27, '--r' , label='27 degC')
ax.plot(maxtime*1e6, tranvbg70, '--g' , label='70 degC')
ax.set_xlabel('time (microseconds)')
ax.set_ylabel('Vout (V)')
ax.set_title('Transient Simulation of Bandgap Circuit')
plt.legend()
plt.grid()
plt.show()
