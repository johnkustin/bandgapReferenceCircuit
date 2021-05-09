v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 120 -390 340 -390 { lab=VDD}
N 340 -390 540 -390 { lab=VDD}
N 340 -260 340 -190 { lab=Vb}
N 730 -390 850 -390 { lab=VDD}
N 340 -390 340 -320 { lab=VDD}
N 300 -300 300 -290 { lab=Vgate}
N 80 -300 80 -290 { lab=Vgate}
N 120 -260 120 -200 { lab=Va}
N 120 -390 120 -320 { lab=VDD}
N 780 -300 810 -300 { lab=Vgate}
N 850 -390 850 -330 { lab=VDD}
N 850 -270 850 -240 { lab=Vbg}
N 540 -390 730 -390 { lab=VDD}
N 80 -300 300 -300 { lab=Vgate}
N 300 -300 780 -300 { lab=Vgate}
N 120 -290 130 -290 { lab=VDD}
N 130 -320 130 -290 { lab=VDD}
N 120 -320 130 -320 { lab=VDD}
N 340 -290 350 -290 { lab=VDD}
N 350 -320 350 -290 { lab=VDD}
N 340 -320 350 -320 { lab=VDD}
N 850 -300 860 -300 { lab=VDD}
N 860 -330 860 -300 { lab=VDD}
N 850 -330 860 -330 { lab=VDD}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 320 -290 0 0 {name=M2
L=2
W=38.7
nf=1
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 830 -300 0 0 {name=M3
L=2
W=38.7
nf=1
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 100 -290 0 0 {name=M4
L=2
W=38.7
nf=1
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/ipin.sym} 80 -300 0 0 {name=p4 lab=Vgate}
C {devices/ipin.sym} 120 -200 0 0 {name=p1 lab=Va}
C {devices/ipin.sym} 340 -190 0 0 {name=p2 lab=Vb}
C {devices/opin.sym} 850 -240 0 0 {name=p3 lab=Vbg}
C {devices/ipin.sym} 120 -390 0 0 {name=p5 lab=VDD}
