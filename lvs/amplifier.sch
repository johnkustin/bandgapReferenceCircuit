v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 90 -130 90 -60 { lab=vg}
N 90 -130 130 -130 { lab=vg}
N 130 -160 130 -130 { lab=vg}
N 130 -160 260 -160 { lab=vg}
N 300 -130 300 -60 { lab=Vgate}
N 90 -30 300 -30 { lab=GND}
N 90 -0 300 -0 { lab=Vq}
N -0 -30 50 -30 { lab=Vb}
N 340 -30 390 -30 { lab=Va}
N 90 -190 90 -160 { lab=VDD}
N 300 -190 300 -160 { lab=VDD}
N 90 -190 300 -190 { lab=VDD}
N 300 -110 560 -110 { lab=Vgate}
N 420 -110 420 -100 { lab=Vgate}
N 460 -130 460 -100 { lab=VDD}
N 460 -70 460 -40 { lab=Vx}
N 460 -190 460 -130 { lab=VDD}
N 300 -190 460 -190 { lab=VDD}
N -120 -110 -120 -80 {}
N -120 -50 -80 -50 {}
N -80 -80 -80 -50 {}
N -80 -160 -80 -80 {}
N -80 -190 -80 -160 {}
N -80 -190 90 -190 {}
N -120 -190 -80 -190 {}
N -120 -190 -120 -160 {}
N -120 -160 -120 -130 {}
N -120 -130 -120 -110 {}
N -120 -120 -80 -120 {}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 320 -30 0 1 {name=M5
L='2'
W='9'
nf=1
mult=3
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 70 -30 0 0 {name=M2
L='2'
W='9'
nf=1
mult=3
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 110 -160 0 1 {name=M4
L=2
W=12.9
nf=1
mult=3
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 280 -160 0 0 {name=M1
L=2
W=12.9
nf=1
mult=3
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/ipin.sym} 180 -190 1 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 0 -30 0 0 {name=p2 lab=Vb}
C {devices/ipin.sym} 390 -30 0 1 {name=p3 lab=Va}
C {devices/iopin.sym} 200 0 1 0 {name=p4 lab=Vq}
C {devices/opin.sym} 560 -110 0 0 {name=p5 lab=Vgate}
C {devices/iopin.sym} 200 -30 3 0 {name=p6 lab=GND}
C {devices/lab_pin.sym} 180 -160 3 0 {name=l1 lab=vg}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 440 -100 0 0 {name=M3
L=2
W=12.9
nf=1
mult=6
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/opin.sym} 460 -40 0 0 {name=p7 lab=Vx}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -100 -160 0 1 {name=M6
L=2
W=12.9
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} -100 -80 0 1 {name=M7
L=2
W=12.9
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
