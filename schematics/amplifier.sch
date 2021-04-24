v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 160 -190 160 -120 { lab=vg}
N 200 -220 330 -220 { lab=vg}
N 160 -180 220 -180 { lab=vg}
N 220 -220 220 -180 { lab=vg}
N 370 -190 370 -120 { lab=vo}
N 160 -60 160 -50 { lab=vx}
N 160 -50 370 -50 { lab=vx}
N 370 -60 370 -50 { lab=vx}
N 160 -250 370 -250 { lab=VDD}
N 20 -90 120 -90 { lab=va}
N 410 -90 520 -90 { lab=vb}
N 20 10 20 60 { lab=va}
N 520 10 520 60 { lab=vb}
N 520 -90 520 -30 { lab=vb}
N 270 60 370 60 { lab=#net1}
N 520 -30 520 10 { lab=vb}
N 20 -40 20 10 { lab=va}
N 20 -90 20 -40 { lab=va}
N 360 -90 370 -90 { lab=vx}
N 360 -90 360 -60 { lab=vx}
N 360 -60 370 -60 { lab=vx}
N 160 -90 170 -90 { lab=vx}
N 170 -90 170 -60 { lab=vx}
N 160 -60 170 -60 { lab=vx}
N 370 -160 640 -160 { lab=vo}
N 80 60 120 60 { lab=#net2}
N 430 60 450 60 { lab=#net3}
N 510 60 520 60 { lab=vb}
N 370 -220 380 -220 { lab=VDD}
N 380 -250 380 -220 { lab=VDD}
N 370 -250 380 -250 { lab=VDD}
N 150 -220 160 -220 { lab=VDD}
N 150 -250 150 -220 { lab=VDD}
N 150 -250 160 -250 { lab=VDD}
N 270 120 420 120 { lab=GND}
N 170 100 170 120 { lab=GND}
N 170 120 270 120 { lab=GND}
N 130 100 130 150 { lab=#net4}
N 130 150 270 150 { lab=#net4}
N 380 100 380 150 { lab=#net4}
N 270 150 380 150 { lab=#net4}
N 420 100 420 120 { lab=GND}
N 260 -20 270 -20 { lab=GND}
N 260 -20 260 10 { lab=GND}
N 260 10 270 10 { lab=GND}
N 310 -20 450 -20 { lab=#net5}
N 680 -60 680 -50 { lab=#net5}
N 680 -20 690 -20 { lab=GND}
N 690 -20 690 10 { lab=GND}
N 680 10 690 10 { lab=GND}
N 450 -20 640 -20 { lab=#net5}
N 630 -60 630 -20 { lab=#net5}
N 630 -60 680 -60 { lab=#net5}
N 180 60 190 60 { lab=#net6}
N 250 60 270 60 { lab=#net1}
C {devices/gnd.sym} 270 10 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 270 -250 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} 20 -240 0 0 {name=V1 value=1.8}
C {devices/vdd.sym} 20 -270 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 20 -210 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 370 -160 0 1 {name=l5 lab=vo}
C {devices/lab_pin.sym} 270 -220 1 1 {name=l6 lab=vg}
C {devices/code_shown.sym} -500 -220 0 0 {name=NGSPICE
only_toplevel=true
spice_ignore=false
value="
.option savecurrents
.option warn=1

.control

save all
let Acm=unitvec(1e3)
let Vcm=unitvec(1e3)
let ix=0
alter v3=0
alter v4=0
while ix<1e3
let vcmtemp=ix/1e3
alter v2=vcmtemp
tf v(vo) v3
let Acm[ix]=Transfer_function
let Vcm[ix]=vcmtemp
let ix=ix+1
end
write amplifier_acm.raw Acm Vcm
load amplifier_acm.raw
plot (abs(acm)) vs vcm
reset
save all

op
let gm4=@m.xm4.msky130_fd_pr__pfet_01v8['gm']
let gm2=@m.xm2.msky130_fd_pr__nfet_01v8['gm']
let ib=@i0[current]
let irhs=@m.xm2.msky130_fd_pr__nfet_01v8['id']
let ilhs=@m.xm1.msky130_fd_pr__nfet_01v8['id']
let vthp=@m.xm3.msky130_fd_pr__pfet_01v8['vth']
let vthn=@m.xm1.msky130_fd_pr__nfet_01v8['vth']
print gm2 gm4
print irhs ilhs
let K=10^(-3.89062)
echo 'saturation cond. for M1 & M2 (by symmetry)'
echo 'is'
print vo - vx
echo 'greater than'
print vb - vx - vthn
echo 'saturation cond. for M3 & M4 (by symmetry)'
echo 'is'
print vdd - vo
echo 'greater than'
print vdd - vg - vthp
echo 'saturation cond. check w/ vo'
echo 'is'
print vo
echo 'between'
print vg + vthp
echo 'and'
print vb - vthn
echo 'common mode input sweep'
dc v2 -1.8 1.8 0.1
let vic=(va+vb)/2
let irhs=@m.xm2.msky130_fd_pr__nfet_01v8['id']
let ilhs=@m.xm1.msky130_fd_pr__nfet_01v8['id']
plot irhs ilhs ilhs/irhs
echo 'ac analysis'
ac dec 100 1 100e9
let vid=net2-net3
let irhs=@m.xm2.msky130_fd_pr__nfet_01v8['id']
let ilhs=@m.xm1.msky130_fd_pr__nfet_01v8['id']
plot db(abs(vo/vid))
echo 'dc gain (dB)'
print db(abs(vo/vid))[0]
.endc
" }
C {devices/code.sym} -110 -70 0 0 {name=TT_MODELS
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
C {devices/vsource.sym} 270 90 0 0 {name=V2 value="700m DC 700m AC 0"}
C {devices/lab_pin.sym} 260 -50 3 1 {name=l7 lab=vx}
C {devices/lab_pin.sym} 450 -90 1 1 {name=l8 lab=vb}
C {devices/lab_pin.sym} 90 -90 1 1 {name=l9 lab=va}
C {devices/gnd.sym} 270 120 0 0 {name=l10 lab=GND}
C {devices/ammeter.sym} 50 60 3 1 {name=Vmeas}
C {devices/ammeter.sym} 480 60 1 0 {name=Vmeas1}
C {devices/code_shown.sym} -1000 -230 0 0 {name=NGSPICE1
only_toplevel=true
spice_ignore=true
value="
.option savecurrents
.option warn=1
.control
save all
let ix=0
let Adm=unitvec(1e3)
let Vdm=unitvec(1e3)
alter v2=0
while ix<1e3
let vdmtemp=ix/1e3
alter v3 vdmtemp/2
alter v4 vdmtemp/2
tf v(vo) v4
let Adm[ix]=Transfer_function
let Vdm[ix]=vdmtemp
let ix=ix+1
end
write amplifier_adm.raw Adm Vdm
load amplifier_adm.raw
plot db(abs(adm)) vs vdm
.endc
" }
C {sky130_fd_pr/nfet_01v8_lvt.sym} 390 -90 0 1 {name=M2
L='4'
W='15*4'
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/vcvs.sym} 150 60 3 0 {name=E1 value=0.5}
C {devices/vcvs.sym} 400 60 3 0 {name=E2 value=0.5}
C {devices/vsource.sym} 270 180 0 0 {name=V3 value="0"}
C {devices/gnd.sym} 270 210 0 0 {name=l11 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 290 -20 0 1 {name=M5
L=2.55
W=16
nf=1
mult=16
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 660 -20 0 0 {name=M6
L=2.55
W=16
nf=1
mult=16
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/isource.sym} 680 -90 0 0 {name=I0 value=246.7u}
C {devices/gnd.sym} 680 10 0 0 {name=l12 lab=GND}
C {devices/gnd.sym} 680 -120 2 0 {name=l13 lab=GND}
C {devices/vsource.sym} 220 60 3 0 {name=V4 value="0"}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 140 -90 0 0 {name=M1
L='4'
W='15*4'
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 180 -220 0 1 {name=M3
L='1.4'
W='7*4'
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 350 -220 0 0 {name=M4
L='1.4'
W='7*4'
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
