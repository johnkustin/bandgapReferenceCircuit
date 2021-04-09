v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 670 -380 670 -360 { lab=vbneg}
N 670 -360 670 -320 { lab=vbneg}
N 670 -320 670 -310 { lab=vbneg}
N 550 -220 670 -220 { lab=GND}
N 710 -280 710 -220 { lab=GND}
N 670 -250 670 -220 { lab=GND}
N 630 -280 670 -280 { lab=GND}
N 630 -280 630 -220 { lab=GND}
N 390 -270 450 -270 { lab=GND}
N 490 -270 510 -270 { lab=GND}
N 390 -270 390 -220 { lab=GND}
N 390 -220 570 -220 { lab=GND}
N 450 -240 450 -220 { lab=GND}
N 510 -270 510 -220 { lab=GND}
N 270 -220 390 -220 { lab=GND}
N 450 -490 450 -300 { lab=Va}
N 670 -490 670 -440 { lab=Vb}
N 670 -220 710 -220 { lab=GND}
N 450 -460 540 -460 { lab=Va}
N 580 -460 670 -460 { lab=Vb}
N 530 -520 530 -500 { lab=#net1}
N 490 -520 630 -520 { lab=#net1}
N 590 -500 590 -220 { lab=GND}
N 450 -550 670 -550 { lab=VDD}
N 490 -550 500 -670 { lab=VDD}
N 450 -550 450 -520 { lab=VDD}
N 670 -550 670 -520 { lab=VDD}
C {sky130_fd_pr/pnp_05v5.sym} 690 -280 0 1 {name=Q1
model="pnp_05v5_W3p40L3p40 m=100"
spiceprefix=X
}
C {devices/lab_pin.sym} 670 -350 0 0 {name=l4 lab=vbneg}
C {devices/res.sym} 670 -410 0 0 {name=R2
value='500k'
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/pnp_05v5.sym} 470 -270 0 1 {name=Q2
model=pnp_05v5_W3p40L3p40
spiceprefix=X
}
C {devices/code.sym} -230 -330 0 0 {name=TT_MODELS
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
C {devices/code_shown.sym} -310 -580 0 0 {name=NGSPICE
only_toplevel=true
value="* this experimental option enables mos model bin 
* selection based on W/NF instead of W
.option savecurrents
.option warn=1
.control
save all
dc temp -40 125 1
plot va vbneg
let deltaV = vb - vbneg
plot va deltav
let vbg = va + deltav
plot vbg
.endc
" }
C {devices/gnd.sym} 540 -220 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 180 -540 0 0 {name=V1 net_name=true value=1.8}
C {devices/vdd.sym} 180 -570 0 0 {name=l8 lab=VDD}
C {devices/gnd.sym} 180 -510 0 0 {name=l9 lab=GND}
C {devices/vdd.sym} 500 -670 0 0 {name=l2 lab=VDD}
C {devices/lab_pin.sym} 670 -470 0 0 {name=l5 lab=Vb}
C {devices/lab_pin.sym} 450 -410 0 0 {name=l3 lab=Va}
C {sky130_fd_pr/pfet_01v8.sym} 470 -520 0 1 {name=M1
L=0.15
W=5
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
C {sky130_fd_pr/pfet_01v8.sym} 650 -520 0 0 {name=M2
L=0.15
W=5
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
C {devices/vcvs.sym} 560 -500 3 0 {name=E1 value=100k}
