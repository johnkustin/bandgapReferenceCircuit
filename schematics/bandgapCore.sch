v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 410 -360 540 -360 { lab=Vb}
N 190 -70 190 -40 { lab=GND}
N 130 -100 190 -100 { lab=GND}
N 130 -100 130 -40 { lab=GND}
N 410 -360 410 -340 { lab=Vb}
N 410 -280 410 -260 { lab=Vb}
N 540 -360 540 -340 { lab=Vb}
N 540 -280 540 -260 { lab=Vb}
N 60 -280 60 -260 { lab=Va}
N 410 -200 410 -130 { lab=Vbneg}
N 60 -180 60 -40 { lab=GND}
N 540 -170 540 -40 { lab=GND}
N 450 -100 450 -40 { lab=GND}
N 370 -100 370 -40 { lab=GND}
N 230 -100 250 -100 { lab=GND}
N 250 -100 250 -40 { lab=GND}
N 40 -230 40 -180 { lab=GND}
N 40 -180 60 -180 { lab=GND}
N 520 -230 520 -170 { lab=GND}
N 520 -170 540 -170 { lab=GND}
N 310 -230 390 -230 { lab=GND}
N 310 -230 310 -40 { lab=GND}
N 300 -360 410 -360 { lab=Vb}
N 190 -360 260 -360 { lab=Va}
N 60 -360 190 -360 { lab=Va}
N 130 -40 190 -40 { lab=GND}
N 60 -40 130 -40 { lab=GND}
N 450 -40 540 -40 { lab=GND}
N 410 -40 450 -40 { lab=GND}
N 370 -40 410 -40 { lab=GND}
N 310 -40 370 -40 { lab=GND}
N 190 -40 250 -40 { lab=GND}
N 60 -200 60 -180 { lab=GND}
N 540 -200 540 -170 { lab=GND}
N 250 -40 310 -40 { lab=GND}
N 540 -340 540 -280 { lab=Vb}
N 410 -340 410 -280 { lab=Vb}
N 60 -360 60 -280 { lab=Va}
N 190 -360 190 -130 { lab=Va}
N 410 -130 440 -130 { lab=Vbneg}
N 400 -130 410 -130 { lab=Vbneg}
N 400 -70 400 -40 { lab=GND}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 60 -230 0 0 {name=R1
W=0.35
L=21.839
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 540 -230 0 0 {name=R2
W=0.35
L=21.839
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 410 -230 0 0 {name=R3
W=0.35
L=3.763
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/ngspice_probe.sym} 190 -360 0 0 {name=r1}
C {devices/ngspice_probe.sym} 410 -360 0 0 {name=r2}
C {devices/ngspice_probe.sym} 410 -170 0 0 {name=r9}
C {devices/iopin.sym} 260 -360 1 0 {name=p1 lab=Va}
C {devices/iopin.sym} 300 -360 1 0 {name=p2 lab=Vb}
C {devices/lab_pin.sym} 410 -170 0 0 {name=l2 lab=Vbneg}
C {/tmp/kustinj/ee272bclone/lvs/sky130_fd_pr__pnp_05v5.sym} 190 -100 0 0 {name=XQ1
model=W3p40L3p40
m=1}
C {devices/iopin.sym} 230 -40 1 0 {name=p3 lab=GND}
C {/tmp/kustinj/ee272bclone/lvs/sky130_fd_pr__pnp_05v5.sym} 400 -100 0 0 {name=XQ2
model=W3p40L3p40
m=39}
