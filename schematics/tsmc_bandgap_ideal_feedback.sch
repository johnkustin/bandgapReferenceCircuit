v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {all resistors modified with temperature coefficients:
tc1=-1.47e-3
tc2=2.7e-6;
both coefficients were pulled from the sky130_fd_pr__res_xhigh_po_base spice model} 920 -80 0 0 0.4 0.4 {}
N 210 -180 460 -180 { lab=Va}
N 520 -180 620 -180 { lab=Vb}
N 620 -180 750 -180 { lab=Vb}
N 400 110 400 140 { lab=GND}
N 400 140 500 140 { lab=GND}
N 210 140 400 140 { lab=GND}
N 340 80 400 80 { lab=GND}
N 340 80 340 140 { lab=GND}
N 460 -180 470 -180 { lab=Va}
N 510 -180 520 -180 { lab=Vb}
N 620 -520 880 -520 { lab=VDD}
N 880 -280 1000 -280 { lab=Vbg}
N 620 -180 620 -160 { lab=Vb}
N 620 -260 620 -180 { lab=Vb}
N 880 -310 880 -280 { lab=Vbg}
N 880 -280 880 -180 { lab=Vbg}
N 620 -100 620 -80 { lab=#net1}
N 750 -180 750 -160 { lab=Vb}
N 750 -100 750 -80 { lab=#net2}
N 210 -180 210 -160 { lab=Va}
N 210 -100 210 -80 { lab=#net3}
N 620 -390 620 -320 { lab=#net4}
N 620 -20 620 0 { lab=vbneg}
N 620 0 620 40 { lab=vbneg}
N 620 40 620 50 { lab=vbneg}
N 500 140 620 140 { lab=GND}
N 210 -20 210 140 { lab=GND}
N 750 -20 750 140 { lab=GND}
N 880 -120 880 140 { lab=GND}
N 620 140 880 140 { lab=GND}
N 660 80 660 140 { lab=GND}
N 400 -180 400 -160 { lab=Va}
N 620 110 620 140 { lab=GND}
N 580 80 620 80 { lab=GND}
N 580 80 580 140 { lab=GND}
N 440 80 460 80 { lab=GND}
N 460 80 460 140 { lab=GND}
N 190 -50 190 0 { lab=GND}
N 190 0 210 0 { lab=GND}
N 730 -50 730 10 { lab=GND}
N 730 10 750 10 { lab=GND}
N 520 -50 600 -50 { lab=GND}
N 520 -50 520 140 { lab=GND}
N 860 -150 860 -100 { lab=GND}
N 860 -100 880 -100 { lab=GND}
N 400 -100 400 50 { lab=Veb}
N 430 -240 460 -240 { lab=GND}
N 430 -240 430 -230 { lab=GND}
N 400 -440 440 -440 { lab=vgate}
N 360 -390 400 -390 { lab=#net5}
N 880 -380 910 -380 { lab=#net6}
N 880 -380 880 -370 { lab=#net6}
N 400 -400 580 -400 { lab=GND}
N 580 -400 870 -400 { lab=GND}
N 870 -400 870 -390 { lab=GND}
N 580 -440 580 -430 { lab=vgate}
N 580 -430 870 -430 { lab=vgate}
N 440 -400 440 -240 { lab=GND}
N 620 -520 620 -450 { lab=VDD}
N 360 -520 620 -520 { lab=VDD}
N 360 -520 360 -450 { lab=VDD}
N 910 -520 910 -440 { lab=VDD}
N 880 -520 910 -520 { lab=VDD}
N 400 -270 400 -180 { lab=Va}
N 220 -530 390 -530 { lab=#net7}
N 450 -530 480 -530 { lab=vgate}
N 500 -440 510 -440 { lab=vgate}
N 510 -440 580 -440 { lab=vgate}
N 480 -530 520 -530 { lab=vgate}
N 520 -530 520 -440 { lab=vgate}
N 400 -330 400 -270 { lab=Va}
N 520 -310 520 -240 { lab=#net8}
N 520 -440 520 -370 { lab=vgate}
N 440 -440 500 -440 { lab=vgate}
N 470 -200 470 -180 { lab=Va}
N 510 -200 510 -180 { lab=Vb}
C {sky130_fd_pr/pnp_05v5.sym} 420 80 0 1 {name=Q2
model=pnp_05v5_W3p40L3p40
spiceprefix=X
}
C {devices/gnd.sym} 500 140 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 1000 -280 0 1 {name=l3 lab=Vbg}
C {devices/lab_pin.sym} 460 -180 3 0 {name=l5 lab=Va}
C {devices/lab_pin.sym} 540 -180 3 0 {name=l6 lab=Vb}
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
.param R4R2ratio=0.47924034354
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
let r4 =vbg/@r4[i]
let r1 =va/@r1[i]
let r2 =vb/@r2[i]
let r3 =deltav/@r3[i]
let vptat =(r2/r3*deltav)
plot veb vptat
plot deriv(veb) deriv(vptat)
let TCratio=deriv(veb)/deriv(vptat)
plot TCratio
plot vb - va
echo 'alpha correction factor'
let alpha=TCratio[670]
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
C {devices/vsource.sym} 60 -580 0 0 {name=V1 net_name=true value=1.8}
C {devices/vdd.sym} 620 -520 0 0 {name=l7 lab=VDD}
C {devices/vdd.sym} 60 -610 0 0 {name=l8 lab=VDD}
C {devices/gnd.sym} 60 -550 0 0 {name=l9 lab=GND}
C {devices/ammeter.sym} 750 -130 0 0 {name=Vr4}
C {devices/ammeter.sym} 620 -130 0 0 {name=Vr2}
C {devices/ammeter.sym} 400 -360 0 0 {name=Vm1}
C {devices/ammeter.sym} 620 -290 0 0 {name=Vm2}
C {devices/ammeter.sym} 880 -340 0 0 {name=Vm3}
C {devices/ammeter.sym} 210 -130 0 0 {name=Vr1}
C {devices/ammeter.sym} 400 -130 0 0 {name=Vq2}
C {sky130_fd_pr/pnp_05v5.sym} 640 80 0 1 {name=Q1
model="pnp_05v5_W3p40L3p40 m=39"
spiceprefix=X
}
C {devices/lab_pin.sym} 620 10 0 0 {name=l4 lab=vbneg}
C {devices/lab_pin.sym} 400 -70 2 0 {name=l10 lab=Veb}
C {devices/vcvs.sym} 490 -240 1 1 {name=E1 value=1}
C {devices/gnd.sym} 430 -230 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 510 -440 0 0 {name=l11 lab=vgate}
C {devices/res.sym} 620 -50 0 0 {name=R3
value='R3val'
footprint=1206
device=resistor
m=1
tc1=-1.47e-3
tc2=2.7e-6}
C {devices/res.sym} 880 -150 0 0 {name=R4
value='R4val'
footprint=1206
device=resistor
m=1
tc1=-1.47e-3
tc2=2.7e-6}
C {devices/res.sym} 210 -50 0 0 {name=R1
value='R2val'
footprint=1206
device=resistor
m=1
tc1=-1.47e-3
tc2=2.7e-6}
C {devices/res.sym} 750 -50 0 0 {name=R2
value='R2val'
footprint=1206
device=resistor
m=1
tc1=-1.47e-3
tc2=2.7e-6}
C {devices/vccs.sym} 360 -420 0 1 {name=G1 value=10m}
C {devices/ind.sym} 520 -340 2 0 {name=L1
m=1
value=1T
footprint=1206
device=inductor}
C {devices/capa.sym} 420 -530 3 0 {name=C1
m=1
value=1T
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 220 -470 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} 220 -500 0 1 {name=V2 value="ac 0.1"}
C {devices/vccs.sym} 620 -420 0 0 {name=G2 value=10m}
C {devices/vccs.sym} 910 -410 0 0 {name=G3 value=10m}
