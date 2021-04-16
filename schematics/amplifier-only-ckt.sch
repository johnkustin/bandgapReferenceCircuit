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
N 160 -60 160 -50 { lab=#net1}
N 160 -50 370 -50 { lab=#net1}
N 370 -60 370 -50 { lab=#net1}
N 160 -250 370 -250 { lab=VDD}
N 20 -90 120 -90 { lab=va}
N 410 -90 520 -90 { lab=vb}
N 360 -90 370 -90 { lab=#net1}
N 360 -90 360 -60 { lab=#net1}
N 360 -60 370 -60 { lab=#net1}
N 160 -90 170 -90 { lab=#net1}
N 170 -90 170 -60 { lab=#net1}
N 160 -60 170 -60 { lab=#net1}
N 370 -160 640 -160 { lab=vout}
C {sky130_fd_pr/pfet3_01v8.sym} 350 -220 0 0 {name=M4
L=0.15
W=0.84
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
C {devices/vdd.sym} 270 -250 0 0 {name=l2 lab=VDD}
C {devices/lab_pin.sym} 370 -160 0 1 {name=l5 lab=vo}
C {devices/lab_pin.sym} 270 -220 1 1 {name=l6 lab=vg}
C {sky130_fd_pr/nfet_01v8.sym} 390 -90 0 1 {name=M2
L=0.15
W=0.42
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
C {sky130_fd_pr/nfet_01v8.sym} 140 -90 0 0 {name=M1
L=0.15
W=0.42
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
C {sky130_fd_pr/pfet3_01v8.sym} 180 -220 0 1 {name=M3
L=0.15
W=0.84
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
C {devices/ipin.sym} 20 -90 0 0 {name=p1 lab=va}
C {devices/ipin.sym} 520 -90 0 1 {name=p2 lab=vb}
C {devices/opin.sym} 640 -160 0 0 {name=p3 lab=vout}
C {devices/ipin.sym} 270 -50 1 1 {name=p4 lab=vx}
