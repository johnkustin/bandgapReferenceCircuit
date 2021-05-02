import sys
sys.path.append('/tmp/kustinj/ee272b/pyMOSChar')
import spice3read as s3r
import matplotlib.pyplot as plt
import numpy as np
import matplotlib.lines as mlines
import matplotlib

matplotlib.rc('xtick',labelsize=15)
matplotlib.rc('ytick',labelsize=15)
plotDat = s3r.read('../sims/bipolar_char_temp_vbe_current_3p40.raw')
current = np.arange(0.01,146,step=20) # in units of uA
fig, ax1 = plt.subplots(1)
ax1.set_xlabel('Temp (degC)')
ax1.set_ylabel('Veb (V)')
ax1.set_title('PNP CTAT Behavior')
xVar = 'temp-sweep'
yVar = 'v(e2)'
zVar = 'i(v1)'
ax1.grid()
lns = []
colors = []
for i in range(np.shape(plotDat[xVar])[0]):
    lns.append(ax1.plot(plotDat[xVar][i], plotDat[yVar][i], label=np.format_float_scientific(current[i], precision=3)))
    colors.append(lns[i][0].get_c())
    #print(np.format_float_scientific(current[i],precision=3))
labs = [l[0].get_label() for l in lns]
lg1 = ax1.legend(labs, loc=3, title='Ic (uA)', prop={'size':15})
lg1.get_title().set_fontsize(15)
dT = plotDat[xVar][0][1] - plotDat[xVar][0][0]
dVbe = [np.gradient(plotDat[yVar][i], dT)*1E3 for i in range(np.shape(plotDat[xVar])[0])] 

fig, ax2 = plt.subplots(1)
ax2.set_xlabel('Temp (degC)')
ax2.set_ylabel('dVeb/dT (mV/degC)')
ax2.set_title('PNP Derivative CTAT Behavior w.r.t Temperature')
lns = []
colors = []
for i in range(np.shape(plotDat[xVar])[0]):
    lns.append(ax2.plot(plotDat[xVar][i], dVbe[i], label=np.format_float_scientific(current[i], precision=3)))
    colors.append(lns[i][0].get_c())
    #print(np.format_float_scientific(current[i],precision=3))
labs = [l[0].get_label() for l in lns]
lg2 = ax2.legend(labs, loc=3, title='Ic (uA)', prop={'size':15})
lg2.get_title().set_fontsize(15)
ax2.grid()
plt.show()
