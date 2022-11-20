v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {to sweep Ic and temperature} 560 -30 0 0 0.4 0.4 {}
T {to measure the Is of a pnp} 40 40 0 0 0.4 0.4 {}
N 440 -100 460 -100 { lab=0}
N 500 -70 500 -60 { lab=0}
N 440 -60 500 -60 { lab=0}
N 440 -100 440 -60 { lab=0}
N 500 -100 520 -100 { lab=0}
N 520 -100 520 -60 { lab=0}
N 500 -60 520 -60 { lab=0}
N 500 -180 500 -130 { lab=E2}
N 500 -320 500 -300 { lab=0}
C {sky130_fd_pr/pnp_05v5.sym} 480 -100 0 0 {name=Q2
model=pnp_05v5_W3p40L3p40
spiceprefix=X
mult=1
}
C {devices/lab_pin.sym} 500 -160 0 0 {name=l1 lab=E2}
C {devices/isource.sym} 500 -270 0 0 {name=I0 value=1u
}
C {devices/lab_pin.sym} 500 -320 0 0 {name=l2 lab=0}
C {devices/lab_pin.sym} 440 -60 0 0 {name=l4 lab=0}
C {devices/code_shown.sym} -160 -260 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
save E2 v1#branch
dc TEMP -40 125 1 i0 0.01u 126u 20u
plot E2
plot deriv(E2)
write bipolar_char_temp_vbe_current_3p40.raw E2 deriv(E2) v1#branch
.endc
" }
C {devices/code.sym} -180 -500 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $SKYWATER_MODELS/sky130.lib.spice tt
.include $SKYWATER_CELLS/pnp_05v5/sky130_fd_pr__pnp_05v5_W3p40L3p40.model.spice
" }
C {devices/vsource.sym} 500 -210 0 0 {name=V1 value=0}
