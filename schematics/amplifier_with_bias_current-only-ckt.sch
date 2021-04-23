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
N 370 -190 370 -120 { lab=vout}
N 160 -60 160 -50 { lab=vx}
N 160 -50 370 -50 { lab=vx}
N 370 -60 370 -50 { lab=vx}
N 160 -250 370 -250 { lab=VDD}
N 20 -90 120 -90 { lab=vb}
N 410 -90 520 -90 { lab=va}
N 20 10 20 60 { lab=vb}
N 520 10 520 60 { lab=va}
N 520 -90 520 -30 { lab=va}
N 520 -30 520 10 { lab=va}
N 20 -40 20 10 { lab=vb}
N 20 -90 20 -40 { lab=vb}
N 360 -90 370 -90 { lab=vx}
N 360 -90 360 -60 { lab=vx}
N 360 -60 370 -60 { lab=vx}
N 160 -90 170 -90 { lab=vx}
N 170 -90 170 -60 { lab=vx}
N 160 -60 170 -60 { lab=vx}
N 540 -50 580 -50 { lab=#net1}
N 540 -50 540 -20 { lab=#net1}
N 580 -130 580 -50 { lab=#net1}
N 580 -20 580 10 { lab=GND}
N 150 -220 160 -220 { lab=VDD}
N 150 -250 150 -220 { lab=VDD}
N 150 -250 160 -250 { lab=VDD}
N 370 -220 380 -220 { lab=VDD}
N 380 -250 380 -220 { lab=VDD}
N 370 -250 380 -250 { lab=VDD}
N 370 -160 540 -160 { lab=vout}
N 540 -160 540 -150 { lab=vout}
N 540 -150 640 -150 { lab=vout}
N 260 -20 270 -20 { lab=GND}
N 260 -20 260 10 { lab=GND}
N 260 10 270 10 { lab=GND}
N 310 -20 540 -20 { lab=#net1}
N 640 -150 740 -150 { lab=vout}
C {devices/gnd.sym} 270 10 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 270 -250 0 0 {name=l2 lab=VDD}
C {devices/lab_pin.sym} 270 -220 1 1 {name=l6 lab=vg}
C {devices/lab_pin.sym} 260 -50 3 1 {name=l7 lab=vx}
C {devices/vdd.sym} 580 -190 0 0 {name=l13 lab=VDD}
C {devices/gnd.sym} 580 10 0 0 {name=l14 lab=GND}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 350 -220 0 0 {name=M4
L=5
W=23.529
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 390 -90 0 1 {name=M2
L=3
W='4.135'
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 140 -90 0 0 {name=M1
L=3
W=4.135
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 560 -20 0 0 {name=M7
L=1
W=4.135
nf=1
mult=1
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
L=5
W=23.529
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 290 -20 0 1 {name=M8
L=1
W=4.135
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/ipin.sym} 20 60 0 0 {name=p1 lab=vb}
C {devices/ipin.sym} 520 60 0 0 {name=p2 lab=va}
C {devices/opin.sym} 740 -150 0 0 {name=p3 lab=vout}
C {devices/isource.sym} 580 -160 0 0 {name=I0 value=20u}
