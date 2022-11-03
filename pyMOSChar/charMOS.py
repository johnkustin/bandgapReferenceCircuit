import os
import os.path
import sys
import pickle
import spice3read
import numpy as np

import signal
import sys

class charMOS:
    def __init__(self, settings: dict):

        self.self.mosDat = {}
        
        for modelFile in settings['modelFiles']: 
            if (not os.path.isfile(modelFile)):
                print("Model file {0} not found!".format(modelFile))
                print("Please call init() again with a valid model file")
                return None
        
        vgsMax = settings['vgsMax']
        vdsMax = settings['vdsMax']
        vsbMax = settings['vsbMax']
        vgsStep = settings['vgsStep']
        vdsStep = settings['vdsStep']
        vsbStep = settings['vsbStep']

        self.vgs = np.linspace(0, vgsMax, vgsMax/vgsStep + 1)
        self.vds = np.linspace(0, vdsMax, vdsMax/vdsStep + 1)
        self.vsb = np.linspace(0, vsbMax, vsbMax/vsbStep + 1)

        self.mosDat['pfet'] = {}
        self.mosDat['nfet'] = {}
        self.mosDat['modelFiles'] = settings['modelFiles']
        self.mosDat['simulator'] = settings['simulator']

        self.mosDat['nfet']['corners'] = settings['corners']
        self.mosDat['nfet']['temp'] = settings['temp']
        self.mosDat['nfet']['length'] = settings['mosLengthsNfet']
        self.mosDat['nfet']['width'] = settings['mosWidthsNfet']
        self.mosDat['nfet']['numfing'] = settings['numfing']
        self.mosDat['nfet']['vgs'] = settings['vgs']
        self.mosDat['nfet']['vds'] = settings['vds']
        self.mosDat['nfet']['vsb'] = -settings['vsb']
        
        self.mosDat['pfet']['corners'] = settings['corners']
        self.mosDat['pfet']['temp'] = settings['temp']
        self.mosDat['pfet']['length'] = settings['mosLengthsPfet']
        self.mosDat['pfet']['width'] = settings['mosWidthsPfet']
        self.mosDat['pfet']['numfing'] = settings['numfing']
        self.mosDat['pfet']['vgs'] = -settings['vgs']
        self.mosDat['pfet']['vds'] = -settings['vds']
        self.mosDat['pfet']['vsb'] = settings['vsb']

        assert(len(self.mosDat['nfet']['length']) == len(self.mosDat['pfet']['length']))

        # 4D arrays to store MOS data-->f(L,               VSB,      VDS,      VGS      )
        self.mosDat.keys()
        self.mosDat['nfet']['id']  = np.zeros((len(mosLengthsNfet), len(vsb), len(vds), len(vgs)))
        self.mosDat['nfet']['vt']  = np.zeros((len(mosLengthsNfet), len(vsb), len(vds), len(vgs)))
        self.mosDat['nfet']['gm']  = np.zeros((len(mosLengthsNfet), len(vsb), len(vds), len(vgs)))
        self.mosDat['nfet']['gmb'] = np.zeros((len(mosLengthsNfet), len(vsb), len(vds), len(vgs)))
        self.mosDat['nfet']['gds'] = np.zeros((len(mosLengthsNfet), len(vsb), len(vds), len(vgs)))
        self.mosDat['nfet']['cgg'] = np.zeros((len(mosLengthsNfet), len(vsb), len(vds), len(vgs)))
        self.mosDat['nfet']['cgs'] = np.zeros((len(mosLengthsNfet), len(vsb), len(vds), len(vgs)))
        self.mosDat['nfet']['cgd'] = np.zeros((len(mosLengthsNfet), len(vsb), len(vds), len(vgs)))
        self.mosDat['nfet']['cgb'] = np.zeros((len(mosLengthsNfet), len(vsb), len(vds), len(vgs)))
        self.mosDat['nfet']['cdd'] = np.zeros((len(mosLengthsNfet), len(vsb), len(vds), len(vgs)))
        self.mosDat['nfet']['css'] = np.zeros((len(mosLengthsNfet), len(vsb), len(vds), len(vgs)))

        self.mosDat['pfet']['id']  = np.zeros((len(mosLengthsPfet), len(vsb), len(vds), len(vgs)))
        self.mosDat['pfet']['vt']  = np.zeros((len(mosLengthsPfet), len(vsb), len(vds), len(vgs)))
        self.mosDat['pfet']['gm']  = np.zeros((len(mosLengthsPfet), len(vsb), len(vds), len(vgs)))
        self.mosDat['pfet']['gmb'] = np.zeros((len(mosLengthsPfet), len(vsb), len(vds), len(vgs)))
        self.mosDat['pfet']['gds'] = np.zeros((len(mosLengthsPfet), len(vsb), len(vds), len(vgs)))
        self.mosDat['pfet']['cgg'] = np.zeros((len(mosLengthsPfet), len(vsb), len(vds), len(vgs)))
        self.mosDat['pfet']['cgs'] = np.zeros((len(mosLengthsPfet), len(vsb), len(vds), len(vgs)))
        self.mosDat['pfet']['cgd'] = np.zeros((len(mosLengthsPfet), len(vsb), len(vds), len(vgs)))
        self.mosDat['pfet']['cgb'] = np.zeros((len(mosLengthsPfet), len(vsb), len(vds), len(vgs)))
        self.mosDat['pfet']['cdd'] = np.zeros((len(mosLengthsPfet), len(vsb), len(vds), len(vgs)))
        self.mosDat['pfet']['css'] = np.zeros((len(mosLengthsPfet), len(vsb), len(vds), len(vgs)))

    def genNetlistNngspice(self, fName='charNMOS.net'):
        netlistN = open(fName, 'w')
        netlistN.write("Characterize N Channel MOSFET\n")
        netlistN.write("\n")
        devName = '@m.xn.m'+self.mosDat['modelN']
        for modelFile, corner in zip(modelFiles, self.mosDat['nfet']['corners']):
            netlistN.write(".lib \"{0}\" {1}\n".format(modelFile, corner))
        netlistN.write("\n")
        netlistN.write("vds  nDrain 0 dc 0\n")
        netlistN.write("vgs  nGate  0 dc 0\n")
        netlistN.write("vbs  nBulk  0 dc {-mosChar_sb}\n")
        netlistN.write("\n")
        netlistN.write(f"xn nDrain nGate 0 nBulk {{self.mosDat['modelN']}}  L={{{{self.mosDat['length']}}*1e-6}} W={{self.mosDat['width']}}*1e-6}\n")
        netlistN.write("\n")
        netlistN.write(".options dccap post brief accurate\n")
        netlistN.write(".control\n")
        netlistN.write("save all " + devName + "[id] \n")
        netlistN.write("+ " + devName + "[vth]\n")
        netlistN.write("+ " + devName + "[gm]\n")
        netlistN.write("+ " + devName + "[gmbs] \n")
        netlistN.write("+ " + devName + "[gds] \n")
        netlistN.write("+ " + devName + "[cgg] \n")
        netlistN.write("+ " + devName + "[cgs] \n")
        netlistN.write("+ " + devName + "[cgd] \n")
        netlistN.write("+ " + devName + "[cdd] \n")
        netlistN.write("+ " + devName + "[cbs] \n")
        netlistN.write("\n")
        netlistN.write("dc vgs 0 {0} {1} vds 0 {2} {3}\n".format(vgsMax, vgsStep, vdsMax, vdsStep))
        netlistN.write("\n")
        netlistN.write("let id   = " + devName + "[id]\n")
        netlistN.write("let vt   = " + devName + "[vth]\n")
        netlistN.write("let gm   = " + devName + "[gm]\n")
        netlistN.write("let gmb  = " + devName + "[gmbs]\n")
        netlistN.write("let gds  = " + devName + "[gds]\n")
        netlistN.write("let cgg  = " + devName + "[cgg]\n")
        netlistN.write("let cgs  = -" + devName + "[cgs]\n")
        netlistN.write("let cgd  = -" + devName + "[cgd]\n")
        netlistN.write("let cgb  = " + devName + "[cgg] - (-" + devName + "[cgs])-(-" + devName + "[cgd])\n")
        netlistN.write("let cdd  = " + devName + "[cdd]\n")
        netlistN.write("let css  = -" + devName + "[cgs]-" + devName + "[cbs]\n")

        netlistN.write("write outN.raw id vt gm gmb gds cgg cgs cgd cgb cdd css\n")
        netlistN.write("exit\n")
        netlistN.write(".endc\n")
        netlistN.write(".end\n")
        netlistN.close();
        
    def genNetlistPngspice(self, fName='charPMOS.net'):
        netlistP = open(fName, 'w')
        netlistP.write("Characterize P Channel MOSFET\n")
        netlistP.write("\n")
        devName = '@m.xp.m'+self.mosDat['modelP']
        for modelFile, corner in zip(modelFiles, self.mosDat['pfet']['corners']):
            netlistP.write(".lib \"{0}\" {1}\n".format(modelFile, corner))
        netlistP.write("\n")
        netlistP.write("vds  nDrain 0 dc 0\n")
        netlistP.write("vgs  nGate  0 dc 0\n")
        netlistP.write("vbs  nBulk  0 dc mosChar_sb\n")
        netlistP.write("\n")
        netlistP.write("xp nDrain nGate 0 nBulk {0}  L={{self.mosDat['length']p*1e-6}} W={{{1}*1e-6}}\n".format(self.mosDat['modelP'], self.mosDat['width']))
        netlistP.write("\n")
        netlistP.write(".options dccap post brief accurate\n")
        netlistP.write(".control\n")
        netlistP.write("save all " + devName + "[id] \n")
        netlistP.write("+ " + devName + "[vth]\n")
        netlistP.write("+ " + devName + "[gm]\n")
        netlistP.write("+ " + devName + "[gmbs] \n")
        netlistP.write("+ " + devName + "[gds] \n")
        netlistP.write("+ " + devName + "[cgg] \n")
        netlistP.write("+ " + devName + "[cgs] \n")
        netlistP.write("+ " + devName + "[cgd] \n")
        netlistP.write("+ " + devName + "[cdd] \n")
        netlistP.write("+ " + devName + "[cbs] \n")
        netlistP.write("\n")
        netlistP.write("dc vgs 0 {0} {1} vds 0 {2} {3}\n".format(-vgsMax, -vgsStep, -vdsMax, -vdsStep))
        netlistP.write("\n")
        netlistP.write("let id   = " + devName + "[id]\n")
        netlistP.write("let vt   = " + devName + "[vth]\n")
        netlistP.write("let gm   = " + devName + "[gm]\n")
        netlistP.write("let gmb  = " + devName + "[gmbs]\n")
        netlistP.write("let gds  = " + devName + "[gds]\n")
        netlistP.write("let cgg  = " + devName + "[cgg]\n")
        netlistP.write("let cgs  = -" + devName + "[cgs]\n")
        netlistP.write("let cgd  = -" + devName + "[cgd]\n")
        netlistP.write("let cgb  = " + devName + "[cgg] - (-" + devName + "[cgs])-(-" + devName + "[cgd])\n")
        netlistP.write("let cdd  = " + devName + "[cdd]\n")
        netlistP.write("let css  = -" + devName + "[cgs]-" + devName + "[cbs]\n")
        netlistP.write("\n")
        netlistP.write("write outP.raw id vt gm gmb gds cgg cgs cgd cgb cdd css\n")
        netlistP.write("exit\n")
        netlistP.write(".endc\n")
        netlistP.write(".end\n")
        netlistP.close();

    def genNetlistNEldo(self, fName='charNMOS.net'):
        netlistN = open(fName, 'w')

    # TODO: TEMPORARY BYPASS

    # def genNetlistSpectre(self, fName='charMOS.scs'):

    #     if (subcktPath == ""):
    #         nmos = "xn"
    #         pmos = "xp"
    #     else:
    #         nmos = "xn." + subcktPath
    #         pmos = "xp." + subcktPath

    #     netlist = open(fName, 'w')
    #     netlist.write('//charMOS.scs \n')
    #     for modelFile, corner in zip(modelFiles, corners):
    #         netlist.write('include  "{0}" {1}\n'.format(modelFile, corner))
    #     netlist.write('include "simParams.scs" \n')
    #     netlist.write('save {0}:ids {0}:vth {0}:igd {0}:igs {0}:gm {0}:gmbs {0}:gds {0}:cgg {0}:cgs {0}:cgd {0}:cgb {0}:cdd {0}:cdg {0}:css {0}:csg {0}:cjd {0}:cjs {1}:ids {1}:vth {1}:igd {1}:igs {1}:gm {1}:gmbs {1}:gds {1}:cgg {1}:cgs {1}:cgd {1}:cgb {1}:cdd {1}:cdg {1}:css {1}:csg {1}:cjd {1}:cjs\n'.format(nmos, pmos))
    #     netlist.write('parameters mosChar_gs=0 mosChar_ds=0 \n')
    #     netlist.write('vdsn     (vdn 0)         vsource dc=mosChar_ds  \n')
    #     netlist.write('vgsn     (vgn 0)         vsource dc=mosChar_gs  \n')
    #     netlist.write('vbsn     (vbn 0)         vsource dc=-mosChar_sb \n')
    #     netlist.write('vdsp     (vdp 0)         vsource dc=-mosChar_ds \n')
    #     netlist.write('vgsp     (vgp 0)         vsource dc=-mosChar_gs \n')
    #     netlist.write('vbsp     (vbp 0)         vsource dc=mosChar_sb  \n')
    #     netlist.write('\n')
    #     netlist.write(f"xn (vdn vgn 0 vbn) {self.mosDat["modelN"]} l={self.mosDat["length"]*1e-6} w={self.mosDat["width"]}u multi=1 nf={numfing} _ccoflag=1\n"
    #     netlist.write(f"xp (vdp vgp 0 vbp) {self.mosDat["modelN"]} l={self.mosDat["length"]*1e-6} w={self.mosDat["width"]}u multi=1 nf={numfing} _ccoflag=1\n"
    #     netlist.write('\n')
    #     netlist.write('options1 options gmin=1e-13 dc_pivot_check=yes reltol=1e-4 vabstol=1e-6 iabstol=1e-10 temp=27 tnom=27 rawfmt=nutbin rawfile="./charMOS.raw" save=none\n')
    #     netlist.write('sweepvds sweep param=mosChar_ds start=0 stop={0} step={1} {{ \n'.format(vdsMax, vdsStep))
    #     netlist.write('sweepvgs dc param=mosChar_gs start=0 stop={0} step={1} \n'.format(vgsMax, vgsStep))
    #     netlist.write('}\n')

    def genSimParamsSpectre(self, L, VSB):
        paramFile = open("simParams.scs", 'w')
        paramFile.write("parameters length={0}\n".format(L))
        paramFile.write("parameters mosChar_sb={0}\n".format(VSB))
        paramFile.close()
        
    def runSim(self, fileName='charMOS.net', simulator='ngspice'):
        os.system("{0} {1} {2}  &>> charMOSPy.log".format(simulator, fileName, simOptions))


    def genDB(self):

        if (simulator == "ngspice"):
            genNetlistNngspice(self.mosDat)
            genNetlistPngspice()
        elif (simulator == "spectre"):
            genNetlistSpectre()
        else:
            print("ERROR: Invalid/Unsupported simulator specified")
            sys.exit(0)

        #  TODO: make sure the prog total is right. e.g. if num of nmos widths != num of pmos widths 
        progTotal = len(mosLengthsNfet)*len(vsb)*len(mosWidthsNfet)
        progCurr  = 0
        print("Data generation in progress. Go have a coffee...")
        for idxL in range(len(mosLengthsNfet)):
            for idxVSB in range(len(vsb)):
                
                if (simulator == "ngspice"):
                    myfile = open("charMOSpy.log", "a")
                    myfile.write(f'charMOS: Simulating for NMOS L={mosLengthsNfet[idxL]} PMOS L={mosLengthsPfet[idxL]}, VSB={vsb[idxVSB]}\n')
                    myfile.close()

                    runSim("charNMOS.net", "ngspice")
                    simDat = spice3read.read('outN.raw')
                    
                    self.mosDat['nfet']['id'][idxL][idxVSB]  = simDat['i(id)']
                    self.mosDat['nfet']['vt'][idxL][idxVSB]  = simDat['v(vt)']
                    self.mosDat['nfet']['gm'][idxL][idxVSB]  = simDat['gm']
                    self.mosDat['nfet']['gmb'][idxL][idxVSB] = simDat['gmb']
                    self.mosDat['nfet']['gds'][idxL][idxVSB] = simDat['gds']
                    self.mosDat['nfet']['cgg'][idxL][idxVSB] = simDat['cgg']
                    self.mosDat['nfet']['cgs'][idxL][idxVSB] = simDat['cgs']
                    self.mosDat['nfet']['cgd'][idxL][idxVSB] = simDat['cgd']
                    self.mosDat['nfet']['cgb'][idxL][idxVSB] = simDat['cgb']
                    self.mosDat['nfet']['cdd'][idxL][idxVSB] = simDat['cdd']
                    self.mosDat['nfet']['css'][idxL][idxVSB] = simDat['css']

                    runSim("charPMOS.net", "ngspice")
                    simDat = spice3read.read('outP.raw')
                    
                    self.mosDat['pfet']['id'][idxL][idxVSB]  = simDat['i(id)']
                    self.mosDat['pfet']['vt'][idxL][idxVSB]  = simDat['v(vt)']
                    self.mosDat['pfet']['gm'][idxL][idxVSB]  = simDat['gm']
                    self.mosDat['pfet']['gmb'][idxL][idxVSB] = simDat['gmb']
                    self.mosDat['pfet']['gds'][idxL][idxVSB] = simDat['gds']
                    self.mosDat['pfet']['cgg'][idxL][idxVSB] = simDat['cgg']
                    self.mosDat['pfet']['cgs'][idxL][idxVSB] = simDat['cgs']
                    self.mosDat['pfet']['cgd'][idxL][idxVSB] = simDat['cgd']
                    self.mosDat['pfet']['cgb'][idxL][idxVSB] = simDat['cgb']
                    self.mosDat['pfet']['cdd'][idxL][idxVSB] = simDat['cdd']
                    self.mosDat['pfet']['css'][idxL][idxVSB] = simDat['css']

                elif (simulator == "spectre"): #  TODO: Fix this part
                    genSimParamsSpectre(mosLengths[idxL], vsb[idxVSB])
                    
                    runSim("charMOS.scs", "spectre")
                    simDat = spice3read.read('charMOS.raw', 'spectre')
                    
                    if (subcktPath == ""):
                        nmos = "xn"
                        pmos = "xp"
                    else:
                        nmos = "xn." + subcktPath
                        pmos = "xp." + subcktPath

                    self.mosDat['nfet']['id'][idxL][idxVSB]  = simDat['{0}:ids'.format(nmos)]
                    self.mosDat['nfet']['vt'][idxL][idxVSB]  = simDat['{0}:vth'.format(nmos)]
                    self.mosDat['nfet']['gm'][idxL][idxVSB]  = simDat['{0}:gm'.format(nmos)]
                    self.mosDat['nfet']['gmb'][idxL][idxVSB] = simDat['{0}:gmbs'.format(nmos)]
                    self.mosDat['nfet']['gds'][idxL][idxVSB] = simDat['{0}:gds'.format(nmos)]
                    self.mosDat['nfet']['cgg'][idxL][idxVSB] = simDat['{0}:cgg'.format(nmos)]
                    self.mosDat['nfet']['cgs'][idxL][idxVSB] = simDat['{0}:cgs'.format(nmos)]
                    self.mosDat['nfet']['cgd'][idxL][idxVSB] = simDat['{0}:cgd'.format(nmos)]
                    self.mosDat['nfet']['cgb'][idxL][idxVSB] = simDat['{0}:cgb'.format(nmos)]
                    self.mosDat['nfet']['cdd'][idxL][idxVSB] = simDat['{0}:cdd'.format(nmos)]
                    self.mosDat['nfet']['css'][idxL][idxVSB] = simDat['{0}:css'.format(nmos)]

                    self.mosDat['pfet']['id'][idxL][idxVSB]  = simDat['{0}:ids'.format(pmos)]
                    self.mosDat['pfet']['vt'][idxL][idxVSB]  = simDat['{0}:vth'.format(pmos)]
                    self.mosDat['pfet']['gm'][idxL][idxVSB]  = simDat['{0}:gm'.format(pmos)]
                    self.mosDat['pfet']['gmb'][idxL][idxVSB] = simDat['{0}:gmbs'.format(pmos)]
                    self.mosDat['pfet']['gds'][idxL][idxVSB] = simDat['{0}:gds'.format(pmos)]
                    self.mosDat['pfet']['cgg'][idxL][idxVSB] = simDat['{0}:cgg'.format(pmos)]
                    self.mosDat['pfet']['cgs'][idxL][idxVSB] = simDat['{0}:cgs'.format(pmos)]
                    self.mosDat['pfet']['cgd'][idxL][idxVSB] = simDat['{0}:cgd'.format(pmos)]
                    self.mosDat['pfet']['cgb'][idxL][idxVSB] = simDat['{0}:cgb'.format(pmos)]
                    self.mosDat['pfet']['cdd'][idxL][idxVSB] = simDat['{0}:cdd'.format(pmos)]
                    self.mosDat['pfet']['css'][idxL][idxVSB] = simDat['{0}:css'.format(pmos)]
                
                
                rows, columns = os.popen('stty size', 'r').read().split()
                columns = int(columns) - 10
                progCurr += 1
                progPercent = 100 * progCurr / progTotal
                progLen = int(progPercent*columns/100)
                sys.stdout.write("\r[{0}{1}] {2}%".format("#"*progLen, " "*(columns-progLen), progPercent))
                sys.stdout.flush()

        os.system('rm -fr charNMOS.net charPMOS.net outN.raw outP.raw b3v33check.log charMOS.scs simParams.scs charMOS.raw charMOS.raw.psf charMOS.ahdlSimDB charMOS.log')
        print
        print("Data generated. Saving...")
        pickle.dump(self.mosDat, open(datFileName, "wb"), pickle.HIGHEST_PROTOCOL)
        print("Done! Data saved in " + datFileName)
