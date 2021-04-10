import sys
sys.path.append('/tmp/kustinj/ee272b/pyMOSChar')
import spice3read as s3r
import numpy as np
import matplotlib.lines as mlines
import matplotlib.pyplot as plt
from scipy import constants 
import model_bgvr



q = constants.e
k = constants.k
xVar = 'temp-sweep'
yVar = 'v(e2)'
dVar = 'v(deriv(e2))'
plotDat = s3r.read('/home/users/kustinj/.xschem/simulations/bipolar_char_temp_vbe_current_3p40.raw')
current = np.arange(0.1156,115.6,0.1) # in units of uA

dVbe = plotDat[dVar]
steadiestdVbes = np.std(dVbe,axis=1)
mostConstantdVbe = np.argmin(np.abs(steadiestdVbes)) # choose most constant dVbe to have easiest TC cancellation
T = plotDat[xVar]
targI = mostConstantdVbe
indx = (np.abs(current - targI)).argmin() # https://philbull.wordpress.com/2012/01/11/numpy-tip-getting-index-of-an-array-element-nearest-to-some-value/
# interp Vbe to find its value when T=27degC
VbeNominal = np.interp(27, plotDat[xVar][indx], plotDat[yVar][indx])
print('interpolated Vbe at 27degC: {} mV'.format(VbeNominal*1e3))
Vg0 = 1.205 # V Dphysics citation

# intep the CTAT factor at T=27degC
CTAT = np.interp(27, plotDat[xVar][indx], dVbe[indx])
gamma = ((VbeNominal - Vg0)/300 - CTAT)*q/k
dVbe_hand = (VbeNominal - Vg0)/300 - gamma*k/q
print('dVbe/dT at 27degC: {} mV/degC'.format(CTAT*1e3))
realCTAT = CTAT/(k/q)
print('CTAT to cancel out: {}'.format(-realCTAT))

# vbg = r4/r2 *(vbe + vt*r2/r3*ln(n))
# want r2/r3*ln(n)*k/q=-CTAT
# r2/r3*ln(n) = -CTAT / (k/q)
R2R3ratio = np.linspace(1,100, 1e3)
n = np.arange(2,1e3+2)

scaler = np.log(n)*R2R3ratio

N = np.ceil(np.interp(-realCTAT,scaler,n))
R2R3ratio_final = -realCTAT/np.log(N)
R3 = 2e3
R2 = R3*R2R3ratio_final
Vref = 0.6
R4R2ratio = Vref/(VbeNominal + k/q*300*R2R3ratio_final*np.log(N))
R4 = R2*R4R2ratio

print("N = {}".format(N))
print("R2R3ratio_final = {}".format(R2R3ratio_final))
print("R3 = {}".format(R3))
print("R2 = {}".format(R2))
print("Vref = {}".format(Vref))
print("R4R2ratio = {}".format(R4R2ratio))
print("R4 = {}".format(R4))
# logN = -CTAT*R2R3ratio*q/k # units of Volts
# ratio = -CTAT*q/k/np.log(n)
# N = 10**logN
# N_interp = np.arange(1, 100)
# R_interp = np.interp(N_interp, N, R2R3ratio)

# fig, ax = plt.subplots(2)
# ax[0].set_xlabel('log10 R3/R2')
# ax[0].set_ylabel('N (# of PNPs)')
# ax[0].semilogx(Rratio, N)
# ax[0].scatter(R_interp, N_interp)
# ax[1].semilogx(Rratio, N)
# ax[1].scatter(R_interp, N_interp)
# ax[1].set_xlabel('log10 R3/R2')
# ax[1].set_ylabel('N (# of PNPs)')
# ax[1].set_ylim([0,51])
# for i, txt in enumerate(R_interp):
#     ax[1].annotate(np.format_float_scientific(txt,precision=4), (R_interp[i],N_interp[i]))


# candidateIndex = 35 # have to look at graph to pick this index
# candidateN = N_interp[candidateIndex] 
# canditateRratio = R_interp[candidateIndex]
# print('N = {}'.format(candidateN))
# print('R2/R3 = {}'.format(1/canditateRratio)) # candidateRratio is fractional, so invert it

# R4R2ratio = np.logspace(-6,0)
# potentialVbg = R4R2ratio*(VbeNominal + k/q*300/canditateRratio*np.log(candidateN))
# # fig, ax1 = plt.subplots()
# # ax1.set_xlabel('log R4/R2')
# # ax1.set_ylabel('Vbg (V)')
# # ax1.semilogx(R4R2ratio, potentialVbg)
# Vref = 0.6
# R4R2ratio_interp = np.interp(Vref, potentialVbg, R4R2ratio)
# print('R4/R2 = {}'.format(R4R2ratio_interp))
# plt.show()
# r3 = 393e3 # ohms
# r5 = 1/canditateRratio*r3
# r2 = r5
# r4 = 884e3*2
# bgvr = model_bgvr.model(300,r2,r3,r4,candidateN,VbeNominal)
# print(bgvr.out)