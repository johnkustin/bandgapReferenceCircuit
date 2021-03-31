import sys
sys.path.append('/tmp/kustinj/ee272b/pyMOSChar')
import spice3read as s3r
import matplotlib.pyplot as plt
import numpy as np
import matplotlib.lines as mlines

plotDat = s3r.read('/home/users/kustinj/.xschem/simulations/bipolar_char_temp_vbe_current.raw')
current = np.arange(5e-3,5,500e-3) # in units of uA
fig, ax1 = plt.subplots(1)
ax1.set_xlabel('Temp (degC)')
ax1.set_ylabel('Veb (V)')
ax1.set_title('PNP CTAT Behavior')
xVar = 'temp-sweep'
yVar = 'v(e2)'
lns = []
colors = []
for i in range(np.shape(plotDat[xVar])[0]):
    lns.append(ax1.plot(plotDat[xVar][i], plotDat[yVar][i], label=np.format_float_scientific(current[i], precision=3)))
    colors.append(lns[i][0].get_c())
    #print(np.format_float_scientific(current[i],precision=3))
labs = [l[0].get_label() for l in lns]
ax1.legend(labs, loc=3)
dT = plotDat[xVar][0][1] - plotDat[xVar][0][0]
dVbe = [np.gradient(plotDat[yVar][i], dT)*1E3 for i in range(np.shape(plotDat[xVar])[0])] 

fig, ax2 = plt.subplots(1)
ax2.set_xlabel('Temp (degC)')
ax2.set_ylabel('dVeb/dT (mV/degC)')
ax2.set_title('PNP CTAT Behavior')
lns = []
colors = []
for i in range(np.shape(plotDat[xVar])[0]):
    lns.append(ax2.plot(plotDat[xVar][i], dVbe[i], label=np.format_float_scientific(current[i], precision=3)))
    colors.append(lns[i][0].get_c())
    #print(np.format_float_scientific(current[i],precision=3))
labs = [l[0].get_label() for l in lns]
ax2.legend(labs, loc=3)
plt.show()

