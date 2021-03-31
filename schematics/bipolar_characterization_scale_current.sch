v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {to measure the Is of a pnp} 40 40 0 0 0.4 0.4 {}
N 100 -100 120 -100 { lab=#net1}
N 160 -100 180 -100 { lab=#net2}
N 160 -70 160 -60 { lab=#net3}
N 40 -160 40 -100 { lab=#net4}
N 160 -60 160 -40 { lab=#net3}
N 100 -100 100 -40 { lab=#net1}
N 180 -100 220 -100 { lab=#net2}
N 220 -90 220 -40 { lab=#net2}
N 220 -100 220 -90 { lab=#net2}
N 40 -220 160 -220 { lab=#net4}
N 40 -220 40 -160 { lab=#net4}
N 160 -140 160 -130 { lab=E1}
N 160 -160 160 -150 { lab=E1}
N 160 -150 160 -140 { lab=E1}
N 160 -40 160 -20 { lab=#net3}
N 220 20 220 50 { lab=0}
N 40 50 220 50 { lab=0}
N 40 -40 40 50 { lab=0}
N 100 20 100 50 { lab=0}
N 160 40 160 50 { lab=0}
C {sky130_fd_pr/pnp_05v5.sym} 140 -100 0 0 {name=Q1
model=pnp_05v5_W0p68L0p68
spiceprefix=X
}
C {devices/code_shown.sym} 20 -430 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
save E1 ve1#branch
dc v1 -0.9 1.8 0.05 TEMP -40 125 10
plot ve1#branch
plot vb1#branch
plot vc1#branch
plot vbody1#branch
meas dc Is when v(e1)=0
print dc par('Is')
.endc
" }
C {devices/code.sym} -170 -110 0 0 {name=TT_MODELS
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
* Corner
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/rf.spice
"}
C {devices/vsource.sym} 40 -70 0 0 {name=V1 value=0
}
C {devices/ammeter.sym} 160 -190 0 0 {name=Ve1}
C {devices/lab_pin.sym} 160 -150 0 0 {name=l3 lab=E1}
C {devices/ammeter.sym} 160 10 0 0 {name=Vc1}
C {devices/ammeter.sym} 100 -10 0 0 {name=Vb1}
C {devices/ammeter.sym} 220 -10 0 0 {name=Vbody1}
C {devices/lab_pin.sym} 40 50 0 0 {name=l1 lab=0}
