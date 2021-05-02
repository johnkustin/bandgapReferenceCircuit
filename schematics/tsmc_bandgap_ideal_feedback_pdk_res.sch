v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {all resistors modified with temperature coefficients:
tc1=-1.47e-3
tc2=2.7e-6;
both coefficients were pulled from the sky130_fd_pr__res_xhigh_po_base spice model} 1360 -140 0 0 0.4 0.4 {}
N 200 -340 450 -340 { lab=Va}
N 510 -340 610 -340 { lab=Vb}
N 610 -340 740 -340 { lab=Vb}
N 340 -50 340 -20 { lab=GND}
N 390 -20 490 -20 { lab=GND}
N 200 -20 390 -20 { lab=GND}
N 280 -80 340 -80 { lab=GND}
N 280 -80 280 -20 { lab=GND}
N 450 -340 460 -340 { lab=Va}
N 390 -680 610 -680 { lab=VDD}
N 610 -680 870 -680 { lab=VDD}
N 610 -340 610 -320 { lab=Vb}
N 610 -420 610 -340 { lab=Vb}
N 900 -470 900 -440 { lab=Vbg}
N 900 -440 900 -340 { lab=Vbg}
N 610 -260 610 -240 { lab=#net1}
N 740 -340 740 -320 { lab=Vb}
N 740 -260 740 -240 { lab=#net2}
N 200 -340 200 -320 { lab=Va}
N 200 -260 200 -240 { lab=#net3}
N 610 -550 610 -480 { lab=#net4}
N 610 -180 610 -160 { lab=vbneg}
N 610 -680 610 -620 { lab=VDD}
N 610 -160 610 -120 { lab=vbneg}
N 610 -120 610 -110 { lab=vbneg}
N 490 -20 610 -20 { lab=GND}
N 200 -180 200 -20 { lab=GND}
N 740 -180 740 -20 { lab=GND}
N 900 -280 900 -20 { lab=GND}
N 610 -20 870 -20 { lab=GND}
N 650 -80 650 -20 { lab=GND}
N 610 -50 610 -20 { lab=GND}
N 570 -80 610 -80 { lab=GND}
N 570 -80 570 -20 { lab=GND}
N 380 -80 400 -80 { lab=GND}
N 400 -80 400 -20 { lab=GND}
N 340 -260 340 -110 { lab=Veb}
N 420 -400 450 -400 { lab=GND}
N 420 -400 420 -390 { lab=GND}
N 390 -600 430 -600 { lab=vgate}
N 610 -620 610 -610 { lab=VDD}
N 430 -600 570 -600 { lab=vgate}
N 390 -560 570 -560 { lab=GND}
N 570 -560 860 -560 { lab=GND}
N 510 -600 510 -400 { lab=vgate}
N 430 -560 430 -400 { lab=GND}
N 460 -360 460 -340 { lab=Va}
N 500 -360 500 -340 { lab=Vb}
N 500 -340 510 -340 { lab=Vb}
N 340 -680 340 -610 { lab=VDD}
N 20 -680 390 -680 { lab=VDD}
N 20 -680 20 -610 { lab=VDD}
N 20 -550 20 -20 { lab=GND}
N 20 -20 200 -20 { lab=GND}
N 340 -340 340 -320 { lab=Va}
N 340 -430 340 -340 { lab=Va}
N 380 -560 390 -560 { lab=GND}
N 380 -600 390 -600 { lab=vgate}
N 340 -550 340 -490 { lab=#net5}
N 870 -680 900 -680 { lab=VDD}
N 570 -600 860 -600 { lab=vgate}
N 900 -550 900 -530 { lab=#net6}
N 900 -680 900 -610 { lab=VDD}
N 870 -20 900 -20 { lab=GND}
N 180 -210 180 -180 { lab=GND}
N 180 -180 200 -180 { lab=GND}
N 590 -210 590 -180 { lab=vbneg}
N 590 -180 610 -180 { lab=vbneg}
N 720 -210 720 -180 { lab=GND}
N 720 -180 740 -180 { lab=GND}
N 880 -310 880 -280 { lab=GND}
N 880 -280 900 -280 { lab=GND}
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
dc TEMP  -140 140 0.1
plot Vbg
plot deriv(Vbg)
let i = vm3#branch
let indx = 1670
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
let r4 =vbg/vm3#branch
let r1 =va/vr1#branch
let r2 =vb/vr4#branch
let r3 =deltav/vr2#branch
let vptat =(r2/r3*deltav)
plot veb vptat
plot deriv(veb) deriv(vptat)
let TCratio=deriv(veb)/deriv(vptat)
plot TCratio
plot vb - va
echo 'alpha correction factor'
let alpha=TCratio[indx]
print alpha
*let t=-140
*let tstop=140
*foreach t -140 -40 0 27 140
*option temp = $t
*ac dec 100 1 1e9
*let gainva=log10(abs(va/0.1))
*let gainvb=log10(abs(vb/0.1))
*let phaseb=(ph(vb/0.1)*180/pi)
*let phasea=(ph(va/0.1)*180/pi)
*plot gainva gainvb
*plot phasea phaseb
*end
.endc
" }
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 200 -210 0 0 {name=R1
W=0.35
L=18.231
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 740 -210 0 0 {name=R2
W=0.35
L=18.231
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 610 -210 0 0 {name=R3
W=0.35
L=3.38
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 900 -310 0 0 {name=R4
W=0.35
L=8.675
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/pnp_05v5.sym} 360 -80 0 1 {name=Q2
model=pnp_05v5_W3p40L3p40
spiceprefix=X
}
C {devices/gnd.sym} 490 -20 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 900 -440 0 1 {name=l3 lab=Vbg}
C {devices/lab_pin.sym} 450 -340 3 0 {name=l5 lab=Va}
C {devices/lab_pin.sym} 530 -340 3 0 {name=l6 lab=Vb}
C {devices/vsource.sym} 20 -580 0 0 {name=V1 net_name=true value=1.8}
C {devices/vdd.sym} 610 -680 0 0 {name=l7 lab=VDD}
C {devices/ammeter.sym} 740 -290 0 0 {name=Vr4}
C {devices/ammeter.sym} 610 -290 0 0 {name=Vr2}
C {devices/ammeter.sym} 340 -460 0 0 {name=Vm1}
C {devices/ammeter.sym} 610 -450 0 0 {name=Vm2}
C {devices/ammeter.sym} 900 -500 0 0 {name=Vm3}
C {devices/ammeter.sym} 200 -290 0 0 {name=Vr1}
C {devices/ammeter.sym} 340 -290 0 0 {name=Vq2}
C {sky130_fd_pr/pnp_05v5.sym} 630 -80 0 1 {name=Q1
model="pnp_05v5_W3p40L3p40 m=39"
spiceprefix=X
}
C {devices/lab_pin.sym} 610 -150 0 0 {name=l4 lab=vbneg}
C {devices/lab_pin.sym} 340 -230 2 0 {name=l10 lab=Veb}
C {devices/vcvs.sym} 480 -400 1 1 {name=E1 value=1}
C {devices/gnd.sym} 420 -390 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 500 -600 0 0 {name=l11 lab=vgate}
C {devices/vccs.sym} 900 -580 0 0 {name=G3 value=10m}
C {devices/vccs.sym} 340 -580 0 1 {name=G2 value=10m}
C {devices/vccs.sym} 610 -580 0 0 {name=G1 value=10m}
