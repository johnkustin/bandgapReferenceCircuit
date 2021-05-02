v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 240 -340 490 -340 { lab=Va}
N 550 -340 650 -340 { lab=Vb}
N 650 -340 780 -340 { lab=Vb}
N 380 -50 380 -20 { lab=GND}
N 430 -20 530 -20 { lab=GND}
N 240 -20 430 -20 { lab=GND}
N 320 -80 380 -80 { lab=GND}
N 320 -80 320 -20 { lab=GND}
N 490 -340 500 -340 { lab=Va}
N 430 -680 650 -680 { lab=VDD}
N 650 -680 910 -680 { lab=VDD}
N 650 -340 650 -320 { lab=Vb}
N 650 -420 650 -340 { lab=Vb}
N 940 -470 940 -440 { lab=Vbg}
N 940 -440 940 -340 { lab=Vbg}
N 650 -260 650 -240 { lab=#net1}
N 780 -340 780 -320 { lab=Vb}
N 780 -260 780 -240 { lab=#net2}
N 240 -340 240 -320 { lab=Va}
N 240 -260 240 -240 { lab=#net3}
N 650 -550 650 -480 { lab=#net4}
N 650 -180 650 -160 { lab=vbneg}
N 650 -680 650 -620 { lab=VDD}
N 650 -160 650 -120 { lab=vbneg}
N 650 -120 650 -110 { lab=vbneg}
N 530 -20 650 -20 { lab=GND}
N 240 -180 240 -20 { lab=GND}
N 780 -180 780 -20 { lab=GND}
N 940 -280 940 -20 { lab=GND}
N 650 -20 910 -20 { lab=GND}
N 690 -80 690 -20 { lab=GND}
N 650 -50 650 -20 { lab=GND}
N 610 -80 650 -80 { lab=GND}
N 610 -80 610 -20 { lab=GND}
N 420 -80 440 -80 { lab=GND}
N 440 -80 440 -20 { lab=GND}
N 380 -260 380 -110 { lab=Veb}
N 460 -400 490 -400 { lab=GND}
N 460 -400 460 -390 { lab=GND}
N 430 -600 470 -600 { lab=vgate}
N 650 -620 650 -610 { lab=VDD}
N 470 -600 610 -600 { lab=vgate}
N 430 -560 610 -560 { lab=GND}
N 610 -560 900 -560 { lab=GND}
N 550 -600 550 -400 { lab=vgate}
N 470 -560 470 -400 { lab=GND}
N 500 -360 500 -340 { lab=Va}
N 540 -360 540 -340 { lab=Vb}
N 540 -340 550 -340 { lab=Vb}
N 380 -680 380 -610 { lab=VDD}
N 60 -680 430 -680 { lab=VDD}
N 60 -680 60 -610 { lab=VDD}
N 60 -550 60 -20 { lab=GND}
N 60 -20 240 -20 { lab=GND}
N 380 -340 380 -320 { lab=Va}
N 380 -430 380 -340 { lab=Va}
N 420 -560 430 -560 { lab=GND}
N 420 -600 430 -600 { lab=vgate}
N 380 -550 380 -490 { lab=#net5}
N 910 -680 940 -680 { lab=VDD}
N 610 -600 900 -600 { lab=vgate}
N 940 -550 940 -530 { lab=#net6}
N 940 -680 940 -610 { lab=VDD}
N 910 -20 940 -20 { lab=GND}
C {sky130_fd_pr/pnp_05v5.sym} 400 -80 0 1 {name=Q2
model=pnp_05v5_W3p40L3p40
spiceprefix=X
}
C {devices/gnd.sym} 530 -20 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 940 -440 0 1 {name=l3 lab=Vbg}
C {devices/lab_pin.sym} 490 -340 3 0 {name=l5 lab=Va}
C {devices/lab_pin.sym} 570 -340 3 0 {name=l6 lab=Vb}
C {devices/code.sym} -750 -190 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_01v8/sky130_fd_pr__esd_nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_pfet_g5v0d10v5/sky130_fd_pr__esd_pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d16v0/sky130_fd_pr__pfet_g5v0d16v0__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d16v0/sky130_fd_pr__nfet_g5v0d16v0__tt_discrete.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_g5v0d10v5/sky130_fd_pr__esd_nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/nonfet.spice
* Mismatch parameters
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__mismatch.corner.spice
* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice
* All models
.include \\\\$::SKYWATER_MODELS\\\\/models/all.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pnp_05v5/sky130_fd_pr__pnp_05v5_W3p40L3p40.model.spice
* Corner
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/rf.spice
"}
C {devices/code_shown.sym} -420 -690 0 0 {name=NGSPICE
only_toplevel=true
value="
.option savecurrents
.option warn=1
.param R3val=20k
.param alpha=1.12439
.param R2R3ratio='4.663181043*alpha'
.param R2val='R3val*R2R3ratio' 
.param R4R2ratio='0.47924034354*1.01585'
.param R4val='R2val*R4R2ratio'
.control
save all
dc TEMP  -40 140 0.1
plot Vbg
plot deriv(Vbg)
let i = vm3#branch
let indx = 670
*indx is the index of temperature sweep for 27degC
echo 'Vbg @ 27degC'
let vbg27c = vbg[indx]
print vbg27c
echo 'dVbe/degC & ppm @ 27degC'
print deriv(vbg)[indx] deriv(vbg)[indx]/vbg27c
plot deriv(vbg)/vbg27c
plot v(va, vb) vs i
plot vm1#branch vm2#branch vm3#branch
let vsg = vdd - vgate
let vsd1 = vdd - va
let vsd2 = vdd - vb
let vsd3 = vdd - vbg
let vth = @m.xm1.msky130_fd_pr__pfet_01v8['vth']
let vov = vsg - vth
plot vov vsd1 vsd2 vsd3
let deltav = vb - vbneg
let r4 =vbg/@r4[i]
let r1 =va/@r1[i]
let r2 =vb/@r2[i]
let r3 =deltav/@r3[i]
let vptat =(r2/r3*deltav)
let sum = veb+vptat
plot veb vptat sum
plot deriv(veb) deriv(vptat)
let TCratio=deriv(veb)/deriv(vptat)
plot TCratio
plot vb - va
echo 'alpha correction factor'
let alpha=TCratio[670]
print alpha
*write tsmc_bandgap_temp.raw
*op
*write tsmc_bandgap_op.raw
*print vbg 
*print (vb - vbneg)
.endc
" }
C {devices/vsource.sym} 60 -580 0 0 {name=V1 net_name=true value=1.8}
C {devices/vdd.sym} 650 -680 0 0 {name=l7 lab=VDD}
C {devices/ammeter.sym} 780 -290 0 0 {name=Vr4}
C {devices/ammeter.sym} 650 -290 0 0 {name=Vr2}
C {devices/ammeter.sym} 380 -460 0 0 {name=Vm1}
C {devices/ammeter.sym} 650 -450 0 0 {name=Vm2}
C {devices/ammeter.sym} 940 -500 0 0 {name=Vm3}
C {devices/ammeter.sym} 240 -290 0 0 {name=Vr1}
C {devices/ammeter.sym} 380 -290 0 0 {name=Vq2}
C {sky130_fd_pr/pnp_05v5.sym} 670 -80 0 1 {name=Q1
model="pnp_05v5_W3p40L3p40 m=39"
spiceprefix=X
}
C {devices/lab_pin.sym} 650 -150 0 0 {name=l4 lab=vbneg}
C {devices/lab_pin.sym} 380 -230 2 0 {name=l10 lab=Veb}
C {devices/vcvs.sym} 520 -400 1 1 {name=E1 value=1}
C {devices/gnd.sym} 460 -390 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 540 -600 0 0 {name=l11 lab=vgate}
C {devices/res.sym} 650 -210 0 0 {name=R3
value='R3val'
footprint=1206
device=resistor
m=1
tc1=0
tc2=0}
C {devices/res.sym} 940 -310 0 0 {name=R4
value='R4val'
footprint=1206
device=resistor
m=1
tc1=0
tc2=0}
C {devices/res.sym} 240 -210 0 0 {name=R1
value='R2val'
footprint=1206
device=resistor
m=1
tc1=0
tc2=0}
C {devices/vccs.sym} 940 -580 0 0 {name=G3 value=10m}
C {devices/res.sym} 780 -210 0 0 {name=R2
value='R2val'
footprint=1206
device=resistor
m=1
tc1=0
tc2=0}
C {devices/vccs.sym} 380 -580 0 1 {name=G2 value=10m}
C {devices/vccs.sym} 650 -580 0 0 {name=G1 value=10m}
