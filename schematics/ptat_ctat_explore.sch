v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 60 -200 60 -180 { lab=Ic}
N 70 -160 70 -130 { lab=Ic}
N 60 -180 70 -180 { lab=Ic}
N 240 -100 260 -100 { lab=GND}
N 240 -100 240 -60 { lab=GND}
N 260 -70 260 -60 { lab=GND}
N 300 -100 300 -60 { lab=GND}
N 250 -60 300 -60 { lab=GND}
N 160 -280 160 -60 { lab=GND}
N 70 -180 70 -160 { lab=Ic}
N 160 -340 160 -280 { lab=GND}
N 60 -340 160 -340 { lab=GND}
N 60 -210 60 -200 { lab=Ic}
N 60 -280 60 -270 { lab=#net1}
N 70 -70 70 0 { lab=#net2}
N 50 30 70 30 { lab=#net3}
N 50 30 50 60 { lab=#net3}
N 70 60 120 60 { lab=GND}
N 120 30 120 60 { lab=GND}
N 110 30 120 30 { lab=GND}
N 160 -60 160 60 { lab=GND}
N 120 60 170 60 { lab=GND}
N 240 -60 250 -60 { lab=GND}
N 160 -60 240 -60 { lab=GND}
N 160 -340 260 -340 { lab=GND}
N 260 -140 260 -130 { lab=#net4}
N 260 -210 260 -200 { lab=#net5}
N 260 -280 260 -270 { lab=#net6}
C {devices/isource.sym} 60 -310 0 0 {name=I0 value=1u}
C {devices/code_shown.sym} 0 -430 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
save all
dc TEMP -40 125 10 i0 0.1156u 115.6u 0.1u
.endc
" }
C {devices/lab_pin.sym} 60 -180 0 0 {name=l1 lab=Ic}
C {sky130_fd_pr/pnp_05v5.sym} 90 30 0 1 {name=Q3
model=pnp_05v5_W3p40L3p40
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} 280 -100 0 1 {name=Q1
model="pnp_05v5_W3p40L3p40 m=100"
spiceprefix=X
}
C {devices/code.sym} -160 -320 0 0 {name=TT_MODELS
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
C {devices/res.sym} 260 -170 0 0 {name=R3
value='39.3k*100'
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 60 -240 0 0 {name=V1 value=0}
C {devices/gnd.sym} 170 60 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 70 -100 0 0 {name=V2 value=0}
C {devices/cccs.sym} 260 -310 0 0 {name=F2 vnam=v2 value=1}
C {devices/vsource.sym} 260 -240 0 0 {name=V4 value=0}
