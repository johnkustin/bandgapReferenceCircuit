import sys
sys.path.append('../pyMOSChar')
import spice3read as s3r
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import rc
from scipy import interpolate

rc('text', usetex=True)
font = {'family' : 'sans-serif',
'weight' : 'bold',
'size' : 14}
rc('font', **font)

for i,corner in enumerate(['tt', 'ss', 'ff']):
    tran27 = s3r.read('../sims/tbtran_{}_mm_0_27degc_vbg.raw'.format(corner))
    tran0 = s3r.read('../sims/tbtran_{}_mm_0_0degc_vbg.raw'.format(corner))
    tran70 = s3r.read('../sims/tbtran_{}_mm_0_70degc_vbg.raw'.format(corner))
    randomseed = np.asarray(s3r.read('../sims/tbtran_{}_mm_0_randomseed.raw'.format(corner))['randomseed']).flatten()[0]
    vbg27 = tran27['v(vbg)'][0][-1]
    vbg0 = tran0['v(vbg)'][0][-1]
    vbg70 = tran70['v(vbg)'][0][-1]
    idleTime = 4.0e-6
    ppm = (vbg70-vbg0)/vbg27/70*1e6
    print('0, 27, 70 degC')
    print('{} {} {}'.format(vbg0, vbg27, vbg70))
    print(ppm)
    times = [tran0['time'][0], tran27['time'][0], tran70['time'][0]]
    maxtime = times[np.asarray([len(x) for x in times]).argmax()]
    tranvbg27 = np.interp(maxtime, times[1], tran27['v(vbg)'][0])
    tranvbg0 = np.interp(maxtime, times[0], tran0['v(vbg)'][0])
    tranvbg70 = np.interp(maxtime, times[2], tran70['v(vbg)'][0])

    settletime27indx = np.abs(tranvbg27[np.where(maxtime >= idleTime)]/vbg27 - 1.01).argmin()
    settletime27 = maxtime[np.where(maxtime >= idleTime)][settletime27indx] - idleTime

    fig = plt.figure(i)
    fig.tight_layout()
    ax = fig.add_subplot(111)
    ax.plot(maxtime*1e6, tranvbg0, '--b' , label=r'0 $^\circ$C')
    ax.plot(maxtime*1e6, tranvbg27, '--r' , label=r'27 $^\circ$C')
    ax.plot(maxtime*1e6, tranvbg70, '--y' , label=r'70 $^\circ$C')
    ax.plot(maxtime*1e6, np.ones(len(maxtime))*1.01*vbg27, label='+1\% Vout @ 27 $^\circ$C')
    ax.set_xlabel(r"time ($\mu$s)")
    ax.set_ylabel('Vout (V)')
    ax.set_title(r"Transient Simulation of Bandgap Circuit. Vref = {} mV. ppm/$^\circ$C = {}"
    "\n"
    "settling time = {} $\mu$s"
    "\n"
    "corner = {}".format(np.around(vbg27*1e3, 3), np.around(ppm,3), np.around(settletime27*1e6,3), corner))
    plt.legend()
    plt.xticks(fontsize=18)
    plt.yticks(fontsize=18)
    plt.grid()
    fig.set_size_inches((1920/fig.dpi,1080/fig.dpi),forward=False)
    fname = 'ppm_{}.png'.format(corner)
    plt.savefig(fname, dpi=fig.dpi)
    print("Wrote {}.".format(fname))


