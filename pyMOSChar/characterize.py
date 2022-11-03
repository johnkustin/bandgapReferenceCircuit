#!python3
import sys
import charMOS
import numpy as np
import argparse

def parseArgs():
    parser = argparse.ArgumentParser(
        description='Characterize a 4-terminal MOSFET',
        fromfile_prefix_chars='@')
    parser.add_argument('nmosModelName',
                        help='name of the nmos model to characterize')
    parser.add_argument('pmosModelName', 
                        help='name of the nmos model to characterize')
    parser.add_argument('simulator', 
                        help='ngspice or spectre')
    parser.add_argument('--modelFilePath', dest='modelFilePath',
                        help='full path to sky130.lib.spice')
    parser.add_argument('corners', nargs='+',
                        help='corner(s) to simulate')

    return parser


def main():

    args = parseArgs()    
    print(args)
    nmos = args.nmosModelName #  "sky130_fd_pr__nfet_01v8"
    pmos = args.pmosModelName #  "sky130_fd_pr__pfet_01v8_hvt"
    modelFilePath = args.modelFilePath
    simulator = args.simulator
    corners = args.corners

    if simulator == "ngspice":
        pass
    elif simulator == "spectre":
        pass
    else:
        AssertionError()

    assert type(corners) == list
    assert type(modelFilePath) == str

    # scale by 1e6 because the netlister scales the w by 1e-6
    mosWidthsN = [2 * 1e6]
    mosWidthsP = [2 * 1e6]
    mosLengthsN = [1 * 1e6]
    mosLengthsN = [1 * 1e6]

    # Beware,
    # More steps => More RAM usage.

    charMOS.init(
    simulator=simulator,
    mosWidthsNfet=mosWidthsN,
    mosLengthsNfet=mosLengthsN,
    mosWidthsPfet=mosWidthsP,
    mosLengthsPfet=mosLengthsP,
    modelFiles=tuple(modelFilePath),
    #("/afs/ir.stanford.edu/class/ee272/skywater-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice",),
    modelN=nmos,
    modelP=pmos,
    simOptions="",
    corners=tuple(corners),
    subcktPath="",
    datFileName="sky130.mos.dataNameFormat.dat",
    vgsMax=1.95, #  TODO: these all need to be changed to variables
    vgsStep=20e-3,
    vdsMax=1.95,
    vdsStep=20e-3,
    vsbMax=1.95,
    vsbStep=550e-3,
    numfing=1,
    temp=300)

    # This function call finally generates the required database.
    charMOS.genDB()


if __name__ == "__main__":
    main()

