v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 120 -180 170 -180 { lab=va}
N 170 -210 170 -180 { lab=va}
N 210 -210 210 -180 { lab=vb}
N 210 -180 250 -180 { lab=vb}
N 290 -60 330 -60 { lab=GND}
N 290 -60 290 -30 { lab=GND}
N 70 -30 290 -30 { lab=GND}
N 70 -60 70 -30 { lab=GND}
N 70 -60 110 -60 { lab=GND}
N 70 -120 70 -90 { lab=vaa}
N 70 -120 120 -120 { lab=vaa}
N 250 -120 290 -120 { lab=vbb}
N 290 -120 290 -90 { lab=vbb}
N 220 -360 220 -250 { lab=#net1}
N 130 -360 220 -360 { lab=#net1}
N 220 -360 250 -360 { lab=#net1}
N 130 -320 250 -320 { lab=GND}
N 160 -320 160 -250 { lab=GND}
N 90 -380 90 -370 { lab=GND}
N 190 -380 290 -380 { lab=VDD}
N 90 -200 120 -200 { lab=va}
N 120 -200 120 -180 { lab=va}
N 290 -310 290 -200 { lab=vb}
N 250 -200 290 -200 { lab=vb}
N 250 -200 250 -180 { lab=vb}
N 90 -310 90 -200 { lab=va}
N 290 -320 290 -310 { lab=vb}
N 250 -360 330 -360 { lab=#net1}
N 330 -360 330 -350 { lab=#net1}
N 280 -350 290 -350 { lab=VDD}
N 280 -380 280 -350 { lab=VDD}
N 120 -180 120 -120 {}
C {devices/vcvs.sym} 190 -250 1 1 {name=E1 value=1}
C {sky130_fd_pr/pnp_05v5.sym} 90 -60 0 1 {name=Q2
model=pnp_05v5_W3p40L3p40
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} 310 -60 0 1 {name=Q1
model="pnp_05v5_W3p40L3p40 m=39"
spiceprefix=X
}
C {devices/vsource.sym} 20 -260 0 0 {name=V1 net_name=true value=1.8}
C {devices/vdd.sym} 20 -290 0 0 {name=l8 lab=VDD}
C {devices/gnd.sym} 20 -230 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 160 -250 0 1 {name=l1 lab=GND}
C {devices/vdd.sym} 190 -380 0 0 {name=l2 lab=VDD}
C {devices/vccs.sym} 90 -340 0 1 {name=G1 value=10m}
C {devices/code_shown.sym} -150 -390 0 0 {name=NGSPICE only_toplevel=false value="
.option savecurrents
.control
dc temp -40 125 0.1
.endc
"}
C {devices/code.sym} -120 -140 0 0 {name=TT_MODELS
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
C {devices/gnd.sym} 190 -30 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 290 -290 0 1 {name=l4 lab=vb}
C {devices/lab_pin.sym} 90 -290 0 1 {name=l5 lab=va}
C {devices/lab_pin.sym} 290 -120 0 1 {name=l6 lab=vbb}
C {devices/lab_pin.sym} 70 -120 0 0 {name=l7 lab=vaa}
C {sky130_fd_pr/pfet_01v8.sym} 310 -350 0 1 {name=M1
L=0.15
W=1
nf=1
mult=64
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 90 -380 2 0 {name=l10 lab=GND}
C {devices/res.sym} 250 -150 0 0 {name=R1
value=10k
footprint=1206
device=rtemp
m=1
tc1=-1.47m
tc2=2.7u}
