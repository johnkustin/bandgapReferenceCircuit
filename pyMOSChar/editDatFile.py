import pickle
import numpy as np

mosDat = pickle.load(open('/tmp/kustinj/ee272b/pyMOSChar/mosSKY130__W1000000.0u.sky130_fd_pr__nfet_01v8.sky130_fd_pr__pfet_01v8.duplicate.lengths.dat','rb'))
dtypes = ['id','vt','gm','gds','cgg','cgs','cgd','cgb','cdd','css']
fettypes=['pfet','nfet']
for f in fettypes:
    for d in dtypes:
        mosDat[f][d] = np.delete(mosDat[f][d], 49, 0)
        mosDat[f][d] = np.delete(mosDat[f][d], 75-1, 0)
    mosDat[f]['length'] = np.delete(mosDat[f]['length'], 49)
    mosDat[f]['length'] = np.delete(mosDat[f]['length'], 75-1)
pickle.dump(mosDat, open('mosSKY130__W1000000.0u.sky130_fd_pr__nfet_01v8.sky130_fd_pr__pfet_01v8.dat', "wb"), pickle.HIGHEST_PROTOCOL)
