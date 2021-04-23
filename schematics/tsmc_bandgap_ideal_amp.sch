v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 210 -180 460 -180 { lab=Va}
N 520 -180 620 -180 { lab=Vb}
N 620 -180 750 -180 { lab=Vb}
N 400 110 400 140 { lab=GND}
N 400 140 500 140 { lab=GND}
N 210 140 400 140 { lab=GND}
N 340 80 400 80 { lab=GND}
N 340 80 340 140 { lab=GND}
N 460 -180 470 -180 { lab=Va}
N 400 -520 620 -520 { lab=VDD}
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
N 880 -520 880 -450 { lab=VDD}
N 620 -20 620 0 { lab=vbneg}
N 620 -520 620 -460 { lab=VDD}
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
N 620 -460 620 -450 { lab=VDD}
N 880 -450 910 -450 { lab=VDD}
N 910 -450 910 -440 { lab=VDD}
N 880 -380 910 -380 { lab=#net5}
N 880 -380 880 -370 { lab=#net5}
N 580 -430 870 -430 { lab=vgate}
N 400 -270 400 -170 { lab=Va}
N 470 -200 470 -180 { lab=Va}
N 510 -200 510 -180 { lab=Vb}
N 510 -180 520 -180 { lab=Vb}
N 400 -390 400 -330 { lab=#net6}
N 580 -430 580 -420 { lab=vgate}
N 620 -450 620 -420 { lab=VDD}
N 870 -430 870 -410 { lab=vgate}
N 910 -440 910 -410 { lab=VDD}
N 400 -520 400 -450 { lab=VDD}
N 520 -430 580 -430 { lab=vgate}
N 520 -430 520 -240 { lab=vgate}
N 510 -430 520 -430 { lab=vgate}
N 360 -430 510 -430 { lab=vgate}
N 360 -430 360 -420 { lab=vgate}
N 400 -450 400 -420 { lab=VDD}
N 330 -240 460 -240 { lab=#net7}
C {sky130_fd_pr/pnp_05v5.sym} 420 80 0 1 {name=Q2
model=pnp_05v5_W3p40L3p40
spiceprefix=X
}
C {devices/gnd.sym} 500 140 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 1000 -280 0 1 {name=l3 lab=Vbg}
C {devices/lab_pin.sym} 470 -190 0 0 {name=l5 lab=Va}
C {devices/lab_pin.sym} 510 -190 0 1 {name=l6 lab=Vb}
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
.param alpha='1.06692'
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
let sum = veb+vptat
plot veb vptat sum
plot deriv(veb) deriv(vptat)
let TCratio=deriv(veb)/deriv(vptat)
plot TCratio
plot vb - va
echo 'alpha correction factor'
let alpha=TCratio[indx]
print alpha
let gm1=@m.xm1.msky130_fd_pr__pfet_01v8[gm]
let gm2=@m.xm2.msky130_fd_pr__pfet_01v8[gm]
let Av2=gm2 * ((r3 + r3/ln(39)) * r2 / (r3 + r3/ln(39) + r2) )
let Av1=gm1 * (r1 * r3/ln(39))/(r1 + r3/ln(39))
plot Av1 Av2 Av2/Av1
*write tsmc_bandgap_temp.raw
*op
*write tsmc_bandgap_op.raw
*print vbg 
*print (vb - vbneg)
.endc
" }
C {devices/vsource.sym} 60 -580 0 0 {name=V1 net_name=true value=1.8}
C {devices/vdd.sym} 620 -520 0 0 {name=l7 lab=VDD}
C {devices/vdd.sym} 60 -610 0 0 {name=l8 lab=VDD}
C {devices/gnd.sym} 60 -550 0 0 {name=l9 lab=GND}
C {devices/ammeter.sym} 750 -130 0 0 {name=Vr4}
C {devices/ammeter.sym} 620 -130 0 0 {name=Vr2}
C {devices/ammeter.sym} 400 -300 0 0 {name=Vm1}
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
C {devices/vcvs.sym} 490 -240 1 1 {name=E1 value=200}
C {devices/lab_wire.sym} 510 -430 0 0 {name=l11 lab=vgate}
C {sky130_fd_pr/pfet_01v8.sym} 380 -420 0 0 {name=M1
L=0.705102
W=1
nf=1
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 600 -420 0 0 {name=M2
L=0.705102
W=1
nf=1
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 890 -410 0 0 {name=M3
L=0.705102
W=1
nf=1
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
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
C {devices/vsource.sym} 330 -270 2 0 {name=V2 value=0.9}
C {devices/gnd.sym} 330 -300 2 0 {name=l2 lab=GND}
