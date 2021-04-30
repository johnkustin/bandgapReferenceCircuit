import sys
sys.path.append('/tmp/kustinj/ee272b/pyMOSChar')
import spice3read as s3r
import matplotlib.pyplot as plt
import os
from glob import glob
import numpy as np
import matplotlib

plotDat = []
for fname in glob('*.raw'):
    plotDat.append((s3r.read(fname),fname.strip('.raw').replace('tsmc_bandgap_','')))
xvar = 'temp-sweep'
yvar = 'v(vbg)'

matplotlib.rc('xtick',labelsize=15)
matplotlib.rc('ytick',labelsize=15)
for x in plotDat:
    data = x[0]
    lab = x[1]
    upperx = np.where(data[xvar][0] >= 0.)
    lowerx = np.where(data[xvar][0] <= 70.)
    rangex = np.intersect1d(upperx,lowerx)
    xdat = data[xvar][0][rangex]
    ydat = data[yvar][0][rangex]
    plt.plot(xdat, ydat*1e3,label=lab)
plt.grid()
plt.legend()
plt.xlabel('Temperature (degC)')
plt.ylabel('Vref (mV)')
plt.title('Vref vs. Temperature')
plt.show()
for x in plotDat:
    data = x[0]
    lab = x[1]
    upperx = np.where(data[xvar][0] >= 0.)
    lowerx = np.where(data[xvar][0] <= 70.)
    rangex = np.intersect1d(upperx,lowerx)
    xdat = data[xvar][0][rangex]
    ydat = data[yvar][0][rangex]
    dif = xdat[1] - xdat[0]
    ppm = (ydat[-1] - ydat[0])/ydat / (xdat[-1] - xdat[0]) * 1e6
    plt.plot(xdat, ppm,label=lab)

plt.grid()
plt.legend()
plt.xlabel('Temperature (degC)')
plt.ylabel('TC (ppm/degC)')
plt.title('Temperature Coefficient')
plt.show()
