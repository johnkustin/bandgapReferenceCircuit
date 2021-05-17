v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 70 -50 80 -50 { lab=GND}
N 70 -50 70 -20 { lab=GND}
N 120 -50 250 -50 { lab=Vx}
N 290 -50 300 -50 { lab=GND}
N 250 -80 250 -50 { lab=Vx}
N 250 -80 290 -80 { lab=Vx}
N 300 -50 300 -20 { lab=GND}
N 70 -20 300 -20 { lab=GND}
N 80 -120 80 -80 { lab=Vq}
N 290 -120 290 -80 { lab=Vx}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 100 -50 0 1 {name=M6
L=2
W=2
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 270 -50 0 0 {name=M1
L=2
W=2
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
C {devices/ngspice_get_value.sym} 100 -80 0 0 {name=r15 node=@m.xm6.msky130_fd_pr__nfet_01v8_lvt[gm]
descr="gm="}
C {devices/ngspice_get_value.sym} 270 -80 0 1 {name=r23 node=@m.xm7.msky130_fd_pr__nfet_01v8_lvt[gm]
descr="gm="}
C {devices/opin.sym} 80 -120 0 0 {name=p1 lab=Vq}
C {devices/ipin.sym} 290 -120 0 0 {name=p2 lab=Vx}
C {devices/iopin.sym} 170 -20 1 0 {name=p3 lab=GND}
