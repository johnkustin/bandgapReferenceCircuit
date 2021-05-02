v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 210 -350 460 -350 { lab=Va}
N 520 -350 620 -350 { lab=Vb}
N 620 -350 750 -350 { lab=Vb}
N 400 -60 400 -30 { lab=GND}
N 400 -30 500 -30 { lab=GND}
N 210 -30 400 -30 { lab=GND}
N 340 -90 400 -90 { lab=GND}
N 340 -90 340 -30 { lab=GND}
N 460 -350 470 -350 { lab=Va}
N 400 -690 620 -690 { lab=VDD}
N 620 -690 880 -690 { lab=VDD}
N 620 -350 620 -330 { lab=Vb}
N 620 -430 620 -350 { lab=Vb}
N 910 -480 910 -450 { lab=Vbg}
N 910 -450 910 -350 { lab=Vbg}
N 620 -270 620 -250 { lab=#net1}
N 750 -350 750 -330 { lab=Vb}
N 750 -270 750 -250 { lab=#net2}
N 210 -350 210 -330 { lab=Va}
N 210 -270 210 -250 { lab=#net3}
N 620 -560 620 -490 { lab=#net4}
N 620 -190 620 -170 { lab=vbneg}
N 620 -690 620 -630 { lab=VDD}
N 620 -170 620 -130 { lab=vbneg}
N 620 -130 620 -120 { lab=vbneg}
N 210 -190 210 -30 { lab=GND}
N 750 -190 750 -30 { lab=GND}
N 910 -290 910 -30 { lab=GND}
N 660 -90 660 -30 { lab=GND}
N 400 -350 400 -330 { lab=Va}
N 620 -60 620 -30 { lab=GND}
N 580 -90 620 -90 { lab=GND}
N 580 -90 580 -30 { lab=GND}
N 440 -90 460 -90 { lab=GND}
N 460 -90 460 -30 { lab=GND}
N 190 -220 190 -170 { lab=GND}
N 190 -170 210 -170 { lab=GND}
N 730 -220 730 -160 { lab=GND}
N 730 -160 750 -160 { lab=GND}
N 520 -220 600 -220 { lab=GND}
N 520 -220 520 -30 { lab=GND}
N 890 -320 890 -270 { lab=GND}
N 890 -270 910 -270 { lab=GND}
N 400 -270 400 -120 { lab=Veb}
N 620 -630 620 -620 { lab=VDD}
N 910 -620 910 -610 { lab=VDD}
N 580 -600 870 -600 { lab=vgate}
N 400 -440 400 -340 { lab=Va}
N 470 -370 470 -350 { lab=Va}
N 510 -370 510 -350 { lab=Vb}
N 510 -350 520 -350 { lab=Vb}
N 400 -560 400 -500 { lab=#net5}
N 580 -600 580 -590 { lab=vgate}
N 620 -620 620 -590 { lab=VDD}
N 870 -600 870 -580 { lab=vgate}
N 910 -610 910 -580 { lab=VDD}
N 400 -690 400 -620 { lab=VDD}
N 520 -600 580 -600 { lab=vgate}
N 520 -600 520 -410 { lab=vgate}
N 510 -600 520 -600 { lab=vgate}
N 360 -600 510 -600 { lab=vgate}
N 360 -600 360 -590 { lab=vgate}
N 400 -620 400 -590 { lab=VDD}
N 340 -410 460 -410 { lab=#net6}
N 110 -690 400 -690 { lab=VDD}
N 110 -690 110 -440 { lab=VDD}
N 110 -380 110 -30 { lab=GND}
N 110 -30 210 -30 { lab=GND}
N 910 -690 910 -620 { lab=VDD}
N 880 -690 910 -690 { lab=VDD}
N 910 -550 910 -540 { lab=#net7}
N 500 -30 910 -30 { lab=GND}
C {sky130_fd_pr/pnp_05v5.sym} 420 -90 0 1 {name=Q2
model=pnp_05v5_W3p40L3p40
spiceprefix=X
}
C {devices/gnd.sym} 500 -30 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 910 -450 0 1 {name=l3 lab=Vbg}
C {devices/lab_pin.sym} 460 -350 3 0 {name=l5 lab=Va}
C {devices/lab_pin.sym} 540 -350 3 0 {name=l6 lab=Vb}
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
.param alpha='0.773875'
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
plot v(va, vb)
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
C {devices/vsource.sym} 110 -410 0 0 {name=V1 net_name=true value=1.8}
C {devices/vdd.sym} 620 -690 0 0 {name=l7 lab=VDD}
C {devices/ammeter.sym} 750 -300 0 0 {name=Vr4}
C {devices/ammeter.sym} 620 -300 0 0 {name=Vr2}
C {devices/ammeter.sym} 400 -470 0 0 {name=Vm1}
C {devices/ammeter.sym} 620 -460 0 0 {name=Vm2}
C {devices/ammeter.sym} 910 -510 0 0 {name=Vm3}
C {devices/ammeter.sym} 210 -300 0 0 {name=Vr1}
C {devices/ammeter.sym} 400 -300 0 0 {name=Vq2}
C {sky130_fd_pr/pnp_05v5.sym} 640 -90 0 1 {name=Q1
model="pnp_05v5_W3p40L3p40 m=39"
spiceprefix=X
}
C {devices/lab_pin.sym} 620 -160 0 0 {name=l4 lab=vbneg}
C {devices/lab_pin.sym} 400 -240 2 0 {name=l10 lab=Veb}
C {devices/vcvs.sym} 490 -410 1 1 {name=E1 value=20}
C {devices/lab_wire.sym} 510 -600 0 0 {name=l11 lab=vgate}
C {sky130_fd_pr/pfet_01v8.sym} 380 -590 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 600 -590 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} 890 -580 0 0 {name=M3
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
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 210 -220 0 0 {name=R1
W=0.35
L=13.95
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 620 -220 0 0 {name=R3
W=0.35
L=3.38
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 910 -320 0 0 {name=R4
W=0.35
L=6.624
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 750 -220 0 0 {name=R2
W=0.35
L=13.95
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/vsource.sym} 340 -440 2 0 {name=V2 value=0.9}
C {devices/gnd.sym} 340 -470 2 0 {name=l2 lab=GND}
