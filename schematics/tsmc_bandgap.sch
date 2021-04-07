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
N 510 -180 520 -180 { lab=Vb}
N 400 -520 400 -450 { lab=VDD}
N 400 -520 620 -520 { lab=VDD}
N 620 -520 880 -520 { lab=VDD}
N 880 -280 1000 -280 { lab=Vbg}
N 620 -180 620 -160 { lab=Vb}
N 400 -270 400 -180 { lab=Va}
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
N 880 -390 880 -370 { lab=#net5}
N 620 -20 620 0 { lab=vbneg}
N 620 -460 620 -450 { lab=VDD}
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
N 470 -200 470 -180 { lab=Va}
N 510 -200 510 -180 { lab=Vb}
N 190 -50 190 0 { lab=GND}
N 190 0 210 0 { lab=GND}
N 730 -50 730 10 { lab=GND}
N 730 10 750 10 { lab=GND}
N 520 -50 600 -50 { lab=GND}
N 520 -50 520 140 { lab=GND}
N 860 -150 860 -100 { lab=GND}
N 860 -100 880 -100 { lab=GND}
N 400 -100 400 50 { lab=Veb}
N 400 -390 400 -330 { lab=#net6}
N 360 -420 840 -420 { lab=vgate}
N 520 -420 520 -240 { lab=vgate}
N 430 -240 460 -240 { lab=GND}
N 430 -240 430 -230 { lab=GND}
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
C {devices/code_shown.sym} -750 -810 0 0 {name=NGSPICE
only_toplevel=true
value="* this experimental option enables mos model bin 
* selection based on W/NF instead of W
.option wnflag=1 
.option savecurrents
.option warn=1
.control
save all
dc TEMP  -20 125 1
plot Vbg
plot deriv(Vbg)
write tsmc_bandgap_temp.raw
op
write tsmc_bandgap_op.raw
print vbg 
print (vb - vbneg)
*dc TEMP -40 125 1 R1 57141.79k 6800k 100k
*let start_r = 5756.397788k
*let end_r = 6800k
*let incr_r = 100k
*let r_act = start_r
*while r_act <= end_r
*  alter r2 r_act
*  alter r1 r_act
*  dc temp -40 125 15
*  write dc-sweep.out Vbg deriv(Vbg)
*  set apendwrite
*  let r_act = r_act + incr_r
*end
*plot dc1.vbg dc1.deriv(vbg)
*plot Vbg
*plot deriv(Vbg)
.endc
" }
C {devices/vsource.sym} -300 -590 0 0 {name=V1 net_name=true value=1.8}
C {devices/vdd.sym} 620 -520 0 0 {name=l7 lab=VDD}
C {devices/vdd.sym} -300 -620 0 0 {name=l8 lab=VDD}
C {devices/gnd.sym} -300 -560 0 0 {name=l9 lab=GND}
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
C {sky130_fd_pr/pfet3_01v8.sym} 380 -420 0 0 {name=M1
L=0.15
W=2
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 400 -70 2 0 {name=l10 lab=Veb}
C {devices/vcvs.sym} 490 -240 1 1 {name=E1 value=100k}
C {devices/gnd.sym} 430 -230 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 510 -420 0 0 {name=l11 lab=vgate}
C {devices/res.sym} 210 -50 0 0 {name=R1
value=9.32636k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 620 -50 0 0 {name=R2
value=2k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 880 -150 0 0 {name=R3
value=4.46957k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 750 -50 0 0 {name=R4
value=9.32636k
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/pfet3_01v8.sym} 600 -420 0 0 {name=M2
L=0.15
W=2
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 860 -420 0 0 {name=M3
L=0.15
W=2
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
