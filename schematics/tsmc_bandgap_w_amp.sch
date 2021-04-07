v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 410 -180 660 -180 { lab=Va}
N 720 -180 820 -180 { lab=Vb}
N 820 -180 950 -180 { lab=Vb}
N 600 110 600 140 { lab=GND}
N 600 140 700 140 { lab=GND}
N 410 140 600 140 { lab=GND}
N 540 80 600 80 { lab=GND}
N 540 80 540 140 { lab=GND}
N 660 -180 670 -180 { lab=Va}
N 710 -180 720 -180 { lab=Vb}
N 600 -520 600 -450 { lab=VDD}
N 600 -520 820 -520 { lab=VDD}
N 820 -520 1080 -520 { lab=VDD}
N 1080 -280 1200 -280 { lab=Vbg}
N 820 -180 820 -160 { lab=Vb}
N 600 -270 600 -180 { lab=Va}
N 820 -260 820 -180 { lab=Vb}
N 1080 -310 1080 -280 { lab=Vbg}
N 1080 -280 1080 -180 { lab=Vbg}
N 820 -100 820 -80 { lab=#net1}
N 950 -180 950 -160 { lab=Vb}
N 950 -100 950 -80 { lab=#net2}
N 410 -180 410 -160 { lab=Va}
N 410 -100 410 -80 { lab=#net3}
N 820 -390 820 -320 { lab=#net4}
N 1080 -520 1080 -450 { lab=VDD}
N 1080 -390 1080 -370 { lab=#net5}
N 820 -20 820 0 { lab=vbneg}
N 820 -460 820 -450 { lab=VDD}
N 820 -520 820 -460 { lab=VDD}
N 820 0 820 40 { lab=vbneg}
N 820 40 820 50 { lab=vbneg}
N 700 140 820 140 { lab=GND}
N 410 -20 410 140 { lab=GND}
N 950 -20 950 140 { lab=GND}
N 1080 -120 1080 140 { lab=GND}
N 820 140 1080 140 { lab=GND}
N 860 80 860 140 { lab=GND}
N 600 -180 600 -160 { lab=Va}
N 820 110 820 140 { lab=GND}
N 780 80 820 80 { lab=GND}
N 780 80 780 140 { lab=GND}
N 640 80 660 80 { lab=GND}
N 660 80 660 140 { lab=GND}
N 670 -200 670 -180 { lab=Va}
N 710 -200 710 -180 { lab=Vb}
N 390 -50 390 0 { lab=GND}
N 390 0 410 0 { lab=GND}
N 930 -50 930 10 { lab=GND}
N 930 10 950 10 { lab=GND}
N 720 -50 800 -50 { lab=GND}
N 720 -50 720 140 { lab=GND}
N 1060 -150 1060 -100 { lab=GND}
N 1060 -100 1080 -100 { lab=GND}
N 600 -100 600 50 { lab=Veb}
N 600 -390 600 -330 { lab=#net6}
N 560 -420 1040 -420 { lab=Vampout}
N -450 -180 -380 -180 { lab=VDD}
N 140 -110 140 80 { lab=#net7}
N 100 60 100 110 { lab=#net7}
N 100 60 140 60 { lab=#net7}
N -90 110 100 110 { lab=#net7}
N -270 20 -240 20 { lab=Vb}
N -200 50 -50 50 { lab=#net8}
N -130 50 -130 80 { lab=#net8}
N -130 140 410 140 { lab=GND}
N -490 -150 -490 40 { lab=#net9}
N -340 -150 -340 40 { lab=#net10}
N -490 100 -340 100 { lab=GND}
N -420 100 -420 140 { lab=GND}
N -420 140 -130 140 { lab=GND}
N -10 20 30 20 { lab=Va}
N -50 -50 -50 -10 { lab=#net10}
N -340 -50 -50 -50 { lab=#net10}
N -200 -30 -200 -10 { lab=#net9}
N -490 -30 -200 -30 { lab=#net9}
N -450 70 -380 70 { lab=VDD}
N -410 50 -410 70 { lab=VDD}
N -490 -270 -490 -210 { lab=#net11}
N -340 -270 -340 -210 { lab=Vampout}
N -450 -300 -380 -300 { lab=#net11}
N -490 -260 -440 -260 { lab=#net11}
N -440 -300 -440 -260 { lab=#net11}
N -490 -360 -490 -330 { lab=#net12}
N -340 -360 -340 -330 { lab=#net13}
N -450 -390 -380 -390 { lab=#net12}
N -490 -350 -440 -350 { lab=#net12}
N -440 -390 -440 -350 { lab=#net12}
N -490 -460 -490 -420 { lab=VDD}
N -340 -460 -340 -420 { lab=VDD}
N -490 -460 -340 -460 { lab=VDD}
N -340 -230 30 -230 { lab=Vampout}
N 150 -520 600 -520 { lab=VDD}
N 30 -420 30 -230 { lab=Vampout}
N 140 -390 140 -110 { lab=#net7}
N 30 -420 560 -420 { lab=Vampout}
N 140 -520 140 -450 { lab=VDD}
N 140 -520 150 -520 { lab=VDD}
C {sky130_fd_pr/pnp_05v5.sym} 620 80 0 1 {name=Q2
model=pnp_05v5_W3p40L3p40
spiceprefix=X
}
C {devices/gnd.sym} 700 140 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 1200 -280 0 1 {name=l3 lab=Vbg}
C {devices/lab_pin.sym} 670 -200 0 0 {name=l5 lab=Va}
C {devices/lab_pin.sym} 710 -200 0 1 {name=l6 lab=Vb}
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
C {devices/code_shown.sym} -1020 -960 0 0 {name=NGSPICE
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
C {devices/vdd.sym} 820 -520 0 0 {name=l7 lab=VDD}
C {devices/vdd.sym} -300 -620 0 0 {name=l8 lab=VDD}
C {devices/gnd.sym} -300 -560 0 0 {name=l9 lab=GND}
C {devices/ammeter.sym} 950 -130 0 0 {name=Vr4}
C {devices/ammeter.sym} 820 -130 0 0 {name=Vr2}
C {devices/ammeter.sym} 600 -300 0 0 {name=Vm1}
C {devices/ammeter.sym} 820 -290 0 0 {name=Vm2}
C {devices/ammeter.sym} 1080 -340 0 0 {name=Vm3}
C {devices/ammeter.sym} 410 -130 0 0 {name=Vr1}
C {devices/ammeter.sym} 600 -130 0 0 {name=Vq2}
C {sky130_fd_pr/pnp_05v5.sym} 840 80 0 1 {name=Q1
model="pnp_05v5_W3p40L3p40 m=36"
spiceprefix=X
}
C {devices/lab_pin.sym} 820 10 0 0 {name=l4 lab=vbneg}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 410 -50 0 0 {name=R1
W=0.35
L=66.862
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 950 -50 0 0 {name=R2
W=0.35
L=66.862
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 820 -50 0 0 {name=R3
W=0.35
L=5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 1080 -150 0 0 {name=R4
W=0.35
L=20.595
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/pfet3_01v8.sym} 580 -420 0 0 {name=M1
L=0.15
W=1
body=VDD
nf=1
mult=50
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 800 -420 0 0 {name=M2
L=0.15
W=1
body=VDD
nf=1
mult=50
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1060 -420 0 0 {name=M3
L=0.15
W=1
body=VDD
nf=1
mult=50
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 600 -70 2 0 {name=l10 lab=Veb}
C {sky130_fd_pr/pfet3_01v8.sym} -220 20 0 0 {name=M4
L=0.15
W=1
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
C {sky130_fd_pr/nfet3_01v8.sym} -110 110 0 1 {name=M8
L=0.15
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} -30 20 0 1 {name=M5
L=0.15
W=1
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
C {sky130_fd_pr/pfet3_01v8.sym} 120 -420 0 0 {name=M9
L=0.15
W=1
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
C {sky130_fd_pr/nfet3_01v8.sym} 120 110 0 0 {name=M10
L=0.15
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} -470 70 0 1 {name=M11
L=0.15
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} -360 70 0 0 {name=M12
L=0.15
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 30 20 0 1 {name=l2 lab=Va}
C {sky130_fd_pr/nfet3_01v8.sym} -470 -180 0 1 {name=M6
L=0.15
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} -360 -180 0 0 {name=M7
L=0.15
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} -470 -300 0 1 {name=M13
L=0.15
W=1
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
C {sky130_fd_pr/pfet3_01v8.sym} -360 -300 0 0 {name=M14
L=0.15
W=1
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
C {sky130_fd_pr/pfet3_01v8.sym} -470 -390 0 1 {name=M15
L=0.15
W=1
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
C {sky130_fd_pr/pfet3_01v8.sym} -360 -390 0 0 {name=M16
L=0.15
W=1
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
C {devices/vdd.sym} -410 -460 0 0 {name=l15 lab=VDD}
C {devices/lab_wire.sym} 30 -340 0 0 {name=l14 sig_type=std_logic lab=Vampout}
C {devices/lab_pin.sym} -270 20 0 0 {name=l16 lab=Vb}
C {devices/vdd.sym} -410 -180 0 0 {name=l11 lab=VDD}
C {devices/vdd.sym} -410 50 0 0 {name=l12 lab=VDD}
