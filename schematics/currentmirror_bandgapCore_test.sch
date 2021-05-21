v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 450 -350 580 -350 { lab=Vb}
N 450 -350 450 -330 { lab=Vb}
N 450 -270 450 -250 { lab=Vb}
N 450 -190 450 -120 { lab=Vbneg}
N 410 -90 410 -30 { lab=GND}
N 350 -220 430 -220 { lab=GND}
N 350 -220 350 -30 { lab=GND}
N 340 -350 450 -350 { lab=Vb}
N 230 -350 300 -350 { lab=Va}
N 100 -350 230 -350 { lab=Va}
N 450 -330 450 -270 { lab=Vb}
N 230 -350 230 -120 { lab=Va}
N 170 -90 200 -90 { lab=GND}
N 80 -320 80 -20 { lab=GND}
N 80 -20 80 10 { lab=GND}
N 80 10 100 10 { lab=GND}
N 230 -60 230 10 { lab=GND}
N 170 -90 170 10 { lab=GND}
N 280 10 700 10 { lab=GND}
N 560 -320 560 -20 { lab=GND}
N 560 -20 560 10 { lab=GND}
N 560 10 580 10 { lab=GND}
N 350 -30 350 10 { lab=GND}
N 410 -30 410 10 { lab=GND}
N 950 -320 950 -140 { lab=GND}
N 700 10 720 10 { lab=GND}
N 950 -140 950 -80 { lab=GND}
N 950 -80 950 -50 { lab=GND}
N 970 -50 970 10 { lab=GND}
N 720 10 970 10 { lab=GND}
N 950 -50 950 10 { lab=GND}
N 100 10 280 10 { lab=GND}
N 240 -670 460 -670 { lab=VDD}
N 460 -670 660 -670 { lab=VDD}
N 460 -540 460 -470 { lab=Vb}
N 850 -670 970 -670 { lab=VDD}
N 460 -670 460 -600 { lab=VDD}
N 420 -580 420 -570 { lab=Vgate}
N 200 -580 200 -570 { lab=Vgate}
N 240 -540 240 -480 { lab=Va}
N 240 -670 240 -600 { lab=VDD}
N 900 -580 930 -580 { lab=Vgate}
N 970 -670 970 -610 { lab=VDD}
N 970 -550 970 -520 { lab=vbg}
N 660 -670 850 -670 { lab=VDD}
N 200 -580 420 -580 { lab=Vgate}
N 420 -580 900 -580 { lab=Vgate}
N 240 -570 250 -570 { lab=VDD}
N 250 -600 250 -570 { lab=VDD}
N 240 -600 250 -600 { lab=VDD}
N 460 -570 470 -570 { lab=VDD}
N 470 -600 470 -570 { lab=VDD}
N 460 -600 470 -600 { lab=VDD}
N 970 -580 980 -580 { lab=VDD}
N 980 -610 980 -580 { lab=VDD}
N 970 -610 980 -610 { lab=VDD}
N 240 -480 240 -350 { lab=Va}
N 460 -470 460 -350 { lab=Vb}
N 970 -520 970 -350 { lab=vbg}
N 450 -60 450 10 { lab=GND}
N -90 -680 -90 -660 { lab=VDD}
N 240 -680 240 -670 { lab=VDD}
N 40 -580 200 -580 { lab=Vgate}
N -90 -600 -90 -500 { lab=GND}
N -90 -500 40 -500 { lab=GND}
N 40 -520 40 -500 { lab=GND}
N -90 -680 240 -680 { lab=VDD}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 450 -220 0 0 {name=R3
W=2.85
L=31.52
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {devices/ngspice_probe.sym} 230 -350 0 0 {name=r1}
C {devices/ngspice_probe.sym} 450 -350 0 0 {name=r2}
C {devices/ngspice_probe.sym} 450 -160 0 0 {name=r9}
C {devices/lab_pin.sym} 450 -160 0 0 {name=l2 lab=Vbneg}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 100 -320 0 0 {name=R6
W=2.85
L=31.52
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 100 -260 0 0 {name=R7
W=2.85
L=31.52
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 100 -200 0 0 {name=R8
W=2.85
L=31.52
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 100 -140 0 0 {name=R10
W=2.85
L=31.52
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 100 -80 0 0 {name=R11
W=2.85
L=31.52
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 100 -20 0 0 {name=R9
W=2.85
L=21.5
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 580 -320 0 0 {name=R12
W=2.85
L=31.52
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 580 -260 0 0 {name=R13
W=2.85
L=31.52
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 580 -200 0 0 {name=R14
W=2.85
L=31.52
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 580 -140 0 0 {name=R15
W=2.85
L=31.52
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 580 -80 0 0 {name=R25
W=2.85
L=31.52
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 580 -20 0 0 {name=R1
W=2.85
L=21.5
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 970 -320 0 0 {name=R17
W=2.85
L=31.52
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 970 -260 0 0 {name=R18
W=2.85
L=31.52
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 970 -200 0 0 {name=R19
W=2.85
L=31.52
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 970 -140 0 0 {name=R20
W=2.85
L=31.52
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 970 -80 0 0 {name=R21
W=2.85
L=16.62
model=res_xhigh_po_2p85
spiceprefix=X
mult=1}
C {devices/gnd.sym} 290 10 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/pnp_05v5.sym} 210 -90 0 0 {name=Q1
model=pnp_05v5_W3p40L3p40
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} 430 -90 0 0 {name=Q2
model="pnp_05v5_W3p40L3p40 m=39"
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 440 -570 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 950 -580 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 220 -570 0 0 {name=M4
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
C {devices/vsource.sym} -90 -630 0 0 {name=V1 net_name=true value="'VDD' pwl 0us 0 5us 'VDD'"}
C {devices/gnd.sym} -40 -500 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 40 -550 0 0 {name=V2 net_name=true value="1.4"}
C {devices/lab_pin.sym} 970 -420 0 1 {name=l3 lab=vbg}
C {devices/code.sym} -250 -350 0 0 {name=NGSPICE1
only_toplevel=true
spice_ignore=true
value=".option seed=13

.param mc_mm_switch=0
* this experimental option enables mos model bin 
* selection based on W/NF instead of W
.param ABSVAR=0.03
.param VDDGAUSS=agauss(1.8, 'ABSVAR', 1)
.param VDD=VCCGAUSS
** variation parameters:
*.param sky130_fd_pr__nfet_01v8_lvt__vth0_slope_spectre='agauss(0, ABSVAR, 3)/sky130_fd_pr__nfet_01v8_lvt__vth0_slope'
*.param sky130_fd_pr__pfet_01v8_lvt__vth0_slope_spectre='agauss(0, ABSVAR, 3)/sky130_fd_pr__pfet_01v8_lvt__vth0_slope'
*.param sky130_fd_pr__nfet_01v8__vth0_slope_spectre='agauss(0, ABSVAR, 3)/sky130_fd_pr__nfet_01v8__vth0_slope'
*.param sky130_fd_pr__pfet_01v8__vth0_slope_spectre='agauss(0, ABSVAR, 3)/sky130_fd_pr__pfet_01v8__vth0_slope'

*.param sky130_fd_pr__pfet_01v8__toxe_slope_spectre='agauss(0, ABSVAR*2, 3)/sky130_fd_pr__pfet_01v8__toxe_slope'
*.param sky130_fd_pr__nfet_01v8__toxe_slope_spectre='agauss(0, ABSVAR*2, 3)/sky130_fd_pr__nfet_01v8__toxe_slope'
*.param sky130_fd_pr__pfet_01v8_lvt__toxe_slope_spectre='agauss(0, ABSVAR*2, 3)/sky130_fd_pr__pfet_01v8_lvt__toxe_slope'
*.param sky130_fd_pr__nfet_01v8_lvt__toxe_slope_spectre='agauss(0, ABSVAR*2, 3)/sky130_fd_pr__nfet_01v8_lvt__toxe_slope'

*.param sky130_fd_pr__res_high_po__var_mult=agauss(0, 'ABSVAR*8', 1)

* .options savecurrents
.control
  let run=1
  dowhile run <= 40
    if run > 1
      reset
      set appendwrite
    end
    save all
    if run % 3 = 0
      set temp=0
    end
    if run % 3 = 1
      set temp=27
    end
    if run % 3 = 2
      set temp=70
    end
    tran 0.05u 150u
    write tsmc_bandgap_real_variation.raw
    let run = run + 1
  end
  set nolegend
  plot all.vbg
.endc
" }
C {devices/code.sym} -250 -530 0 0 {name=TT_MODELS
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
*.include \\\\$::SKYWATER_MODELS\\\\/cells/pnp_05v5/sky130_fd_pr__pnp_05v5_W3p40L3p40.model.spice
.include /tmp/kustinj/ee272bclone/open_pdks/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pnp_05v5_W3p40L3p40.model.spice
* Corner
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/rf.spice
"}
C {devices/code_shown.sym} -860 -750 0 0 {name=s1 
only_toplevel=true 
spice_ignore=false

value="
.option savecurrents
.param mc_mm_switch=0
.param VDD=1.8

.control
save all
+ @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]
+ @m.xm2.msky130_fd_pr__pfet_01v8_lvt[gm]
+ @m.xm3.msky130_fd_pr__pfet_01v8_lvt[gm]
+ @m.xm4.msky130_fd_pr__pfet_01v8_lvt[gm]
+ @m.xm5.msky130_fd_pr__nfet_01v8_lvt[gm]
+ @m.xm6.msky130_fd_pr__nfet_01v8_lvt[gm]
+ @m.xm7.msky130_fd_pr__nfet_01v8_lvt[gm]
+ @m.xm8.msky130_fd_pr__pfet_01v8_lvt[gm]
+ @m.xm9.msky130_fd_pr__nfet_01v8_lvt[gm]
+ @m.xm13.msky130_fd_pr__pfet_01v8_lvt[gm]

op
write currentmirror_bandgapCore_test.raw
let id8=@m.xm8.msky130_fd_pr__pfet_01v8_lvt[id]
let id1=@m.xm1.msky130_fd_pr__pfet_01v8_lvt[id]
let vth5=@m.xm5.msky130_fd_pr__nfet_01v8_lvt[vth]
let vth6=@m.xm6.msky130_fd_pr__nfet_01v8_lvt[vth]
let wm8=@m.xm8.msky130_fd_pr__pfet_01v8_lvt[w]
let mm8=@m.xm8.msky130_fd_pr__pfet_01v8_lvt[m]
let weff8=wm8*mm8
let jd8=id8/weff8
let wm1=@m.xm1.msky130_fd_pr__pfet_01v8_lvt[w]
let mm1=@m.xm1.msky130_fd_pr__pfet_01v8_lvt[m]
let weff1=wm1*mm1
let jd1=id1/weff1
let wm13=@m.xm13.msky130_fd_pr__pfet_01v8_lvt[w]
let mm13=@m.xm13.msky130_fd_pr__pfet_01v8_lvt[m]
let weff13=wm13*mm13
let id13=@m.xm13.msky130_fd_pr__pfet_01v8_lvt[id]
let jd13=id13/weff13
let gm13=@m.xm13.msky130_fd_pr__pfet_01v8_lvt[gm]
let gm3=@m.xm3.msky130_fd_pr__pfet_01v8_lvt[gm]
let gm4=@m.xm4.msky130_fd_pr__pfet_01v8_lvt[gm]
let gm5=@m.xm5.msky130_fd_pr__nfet_01v8_lvt[gm]
let gm6=@m.xm6.msky130_fd_pr__nfet_01v8_lvt[gm]
let gm7=@m.xm7.msky130_fd_pr__nfet_01v8_lvt[gm]
let gm8=@m.xm8.msky130_fd_pr__pfet_01v8_lvt[gm]
let gm9=@m.xm9.msky130_fd_pr__nfet_01v8_lvt[gm]
let gm1=@m.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]
let gm2=@m.xm2.msky130_fd_pr__pfet_01v8_lvt[gm]
let vdsat1=2/(gm1/vm1#branch)
let vdsat2=2/(gm2/vm2#branch)
let vdsat3=2/(gm3/vm3#branch)
let vdsat4=2/(gm4/@m.xm4.msky130_fd_pr__pfet_01v8_lvt[id])
let vdsat5=2/(gm5/@m.xm5.msky130_fd_pr__nfet_01v8_lvt[id])
let vdsat6=2/(gm6/@m.xm6.msky130_fd_pr__nfet_01v8_lvt[id])
let vdsat7=2/(gm7/@m.xm7.msky130_fd_pr__nfet_01v8_lvt[id])
let vdsat8=2/(gm8/@m.xm8.msky130_fd_pr__pfet_01v8_lvt[id])
let vdsat9=2/(gm9/@m.xm9.msky130_fd_pr__nfet_01v8_lvt[id])
let vdsat13=2/(gm13/@m.xm13.msky130_fd_pr__pfet_01v8_lvt[id])


print vbg vgate vg va vb vx vq
print vdsat1 vdsat2 vdsat3 vdsat4 
+ vdsat5 vdsat6 vdsat7 vdsat8 vdsat9 vdsat13 
.endc
"}
C {devices/ngspice_probe.sym} 350 -580 0 0 {name=r5}
C {devices/ngspice_probe.sym} 970 -450 0 0 {name=r3}
C {devices/launcher.sym} 1200 -660 0 0 {name=h1
descr=Annotate 
tclcommand="ngspice::annotate"}
C {devices/lab_pin.sym} 240 -420 0 0 {name=l4 lab=Va}
C {devices/lab_pin.sym} 460 -430 0 0 {name=l5 lab=Vb}
C {devices/lab_pin.sym} 610 -580 0 0 {name=l6 lab=Vgate}
C {devices/vdd.sym} 240 -680 0 0 {name=l7 lab=VDD}
