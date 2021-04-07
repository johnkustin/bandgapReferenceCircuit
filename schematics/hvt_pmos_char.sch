v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 320 -340 320 -270 { lab=#net1}
N 320 -210 320 -140 { lab=#net2}
N 240 -240 280 -240 { lab=#net3}
N 200 -360 320 -360 { lab=#net1}
N 320 -360 320 -340 { lab=#net1}
N 200 -300 200 -80 { lab=GND}
N 200 -180 240 -180 { lab=GND}
N 200 -80 320 -80 { lab=GND}
C {sky130_fd_pr/pfet3_01v8_hvt.sym} 300 -240 0 0 {name=M1
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
model=pfet_01v8_hvt
spiceprefix=X
}
C {devices/vsource.sym} 240 -210 0 0 {name=V1 value=3}
C {devices/gnd.sym} 210 -80 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 320 -110 0 0 {name=V2 value=3}
C {devices/vsource.sym} 200 -330 0 0 {name=VDD value=3}
C {devices/code_shown.sym} 20 -510 0 0 {name=s1 only_toplevel=false value=blabla}
