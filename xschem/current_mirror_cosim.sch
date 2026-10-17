v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 495 -960 1295 -560 {flags=graph
y1=0
y2=2
ypos1=0.12703394
ypos2=1.7910429
divy=5
subdivy=1
unity=1
x1=8e-06
x2=4.8e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk
----
count_out; count_out3,count_out2,count_out1,count_out0
---
count_out3
count_out2
count_out1
count_out0"
color="8 9 11 9 11 11 11 11 4"
dataset=-1
unitx=1
logx=0
logy=0
digital=1
}
B 2 495 -1365 1295 -965 {flags=graph
y1=1e-6

ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=8e-06
x2=4.8e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color=4
node=i(VAMM2)
hilight_wave=-1
y2=20e-6}
N -300 -690 -250 -690 {lab=CLK}
N 110 -690 150 -690 {bus=1 lab=count_out[3..0]}
N -110 -690 110 -690 {bus=1 lab=count_out[3..0]}
N -460 -170 -460 -130 {
lab=CLK}
N -460 -70 -460 -40 {
lab=0}
N 90 -160 90 -120 {
lab=Vg}
N 90 -60 90 -20 {
lab=0}
N 90 -160 170 -160 {
lab=Vg}
N 170 -160 170 -90 {
lab=Vg}
N 130 -90 170 -90 {
lab=Vg}
N 0 -90 90 -90 {
lab=0}
N 0 -90 0 -20 {
lab=0}
N 0 -20 90 -20 {
lab=0}
N -70 -120 -70 -20 {
lab=0}
N -70 -20 0 -20 {
lab=0}
N 90 -440 90 -430 {
lab=#net1}
N -70 -440 90 -440 {
lab=#net1}
N 90 -370 90 -160 {
lab=Vg}
N -70 -440 -70 -180 {
lab=#net1}
N 90 -20 270 -20 {
lab=0}
N 270 -60 270 -20 {
lab=0}
N 170 -90 230 -90 {
lab=Vg}
N 270 -90 340 -90 {
lab=0}
N 340 -90 340 -20 {
lab=0}
N 270 -20 340 -20 {
lab=0}
N 270 -440 270 -430 {
lab=#net1}
N 270 -370 270 -330 {
lab=#net2}
N 270 -260 270 -120 {
lab=#net3}
N 90 -440 270 -440 {
lab=#net1}
N 380 -90 430 -90 {
lab=Vg}
N 340 -20 470 -20 {
lab=0}
N 470 -60 470 -20 {
lab=0}
N 470 -90 560 -90 {
lab=0}
N 560 -90 560 -20 {
lab=0}
N 470 -20 560 -20 {
lab=0}
N 470 -180 470 -120 {
lab=#net4}
N 470 -260 470 -240 {
lab=#net3}
N 380 -210 430 -210 {
lab=count_out0}
N 470 -210 560 -210 {
lab=0}
N 560 -210 560 -90 {
lab=0}
N 270 -260 470 -260 {
lab=#net3}
N 270 -270 270 -260 {
lab=#net3}
N 630 -90 680 -90 {
lab=Vg}
N 720 -60 720 -20 {
lab=0}
N 720 -90 810 -90 {
lab=0}
N 810 -90 810 -20 {
lab=0}
N 720 -20 810 -20 {
lab=0}
N 720 -180 720 -120 {
lab=#net5}
N 720 -260 720 -240 {
lab=#net3}
N 630 -210 680 -210 {
lab=count_out1}
N 720 -210 810 -210 {
lab=0}
N 810 -210 810 -90 {
lab=0}
N 470 -260 720 -260 {
lab=#net3}
N 560 -20 720 -20 {
lab=0}
N 880 -90 930 -90 {
lab=Vg}
N 970 -60 970 -20 {
lab=0}
N 970 -90 1060 -90 {
lab=0}
N 1060 -90 1060 -20 {
lab=0}
N 970 -20 1060 -20 {
lab=0}
N 970 -180 970 -120 {
lab=#net6}
N 970 -260 970 -240 {
lab=#net3}
N 880 -210 930 -210 {
lab=count_out2}
N 970 -210 1060 -210 {
lab=0}
N 1060 -210 1060 -90 {
lab=0}
N 720 -260 970 -260 {
lab=#net3}
N 810 -20 970 -20 {
lab=0}
N 1130 -90 1180 -90 {
lab=Vg}
N 1220 -60 1220 -20 {
lab=0}
N 1220 -90 1310 -90 {
lab=0}
N 1310 -90 1310 -20 {
lab=0}
N 1220 -20 1310 -20 {
lab=0}
N 1220 -180 1220 -120 {
lab=#net7}
N 1220 -260 1220 -240 {
lab=#net3}
N 1130 -210 1180 -210 {
lab=count_out3}
N 1220 -210 1310 -210 {
lab=0}
N 1310 -210 1310 -90 {
lab=0}
N 970 -260 1220 -260 {
lab=#net3}
N 1060 -20 1220 -20 {
lab=0}
C {netlist.sym} 1500 -350 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27

*.option method=gear
.param VCC=1.5

.control
save all
tran 1n 50u
*plot i(Vmeas) i(Vmeas1) 
remzerovec
write current_mirror_cosim.raw
.endc
"}
C {lab_pin.sym} -300 -690 0 0 {name=p3 lab=CLK}
C {lab_pin.sym} 150 -690 0 1 {name=p5 lab=count_out[3..0]}
C {launcher.sym} 1050 -435 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran"
}
C {launcher.sym} 1050 -385 0 0 {name=h1
descr="Icarusate Design" 
tclcommand="execute 1 sh -c \\"cd $netlist_dir; iverilog -o counter [abs_sym_path ./counter.v]\\""}
C {counter.sym} -180 -690 0 0 {name=a1 model=counter

device_model=".model counter d_cosim simulation=\\"ivlng\\" sim_args=[\\"counter\\"] delay=0"

tclcommand="edit_file [abs_sym_path counter.v]"}
C {vsource.sym} -460 -100 0 0 {name=V2 value="pulse 0 'VCC' 500n 10n 10n 490n 1u" savecurrent=false}
C {lab_wire.sym} -460 -160 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {lab_wire.sym} -460 -40 0 0 {name=p10 sig_type=std_logic lab=0}
C {nmos4.sym} 110 -90 0 1 {name=M1
l=1u
w=2u
m=1
model=nm
device_model=".model nm nmos level=54 version=4.8.3"
}
C {isource.sym} 90 -400 0 0 {name=I0 value=10u}
C {vsource.sym} -70 -150 0 0 {name=V1 value=1.5 savecurrent=false}
C {lab_wire.sym} 25 -20 0 0 {name=p14 sig_type=std_logic lab=0}
C {nmos4.sym} 250 -90 0 0 {name=M2
l=1u
w=2u
m=1
model=nm
}
C {lab_wire.sym} 210 -90 0 0 {name=p11 sig_type=std_logic lab=Vg}
C {res.sym} 270 -400 0 0 {name=R5
value=0.1Meg
footprint=1206
device=resistor
m=1}
C {ammeter.sym} 270 -300 0 0 {name=VAMM2 savecurrent=0 spice_ignore=0}
C {nmos4.sym} 450 -210 0 0 {name=M3
l=0.13u
w=10u
m=1
model=nm
}
C {nmos4.sym} 450 -90 0 0 {name=M4
l=1u
w=2u
m=1
model=nm
}
C {lab_wire.sym} 400 -90 0 0 {name=p12 sig_type=std_logic lab=Vg}
C {lab_wire.sym} 410 -210 0 0 {name=p13 sig_type=std_logic lab=count_out0}
C {nmos4.sym} 700 -210 0 0 {name=M5
l=0.13u
w=10u
m=1
model=nm
}
C {nmos4.sym} 700 -90 0 0 {name=M6
l=1u
w=2u
m=1
model=nm
}
C {lab_wire.sym} 650 -90 0 0 {name=p8 sig_type=std_logic lab=Vg}
C {lab_wire.sym} 660 -210 0 0 {name=p15 sig_type=std_logic lab=count_out1}
C {nmos4.sym} 950 -210 0 0 {name=M7
l=0.13u
w=10u
m=1
model=nm
}
C {nmos4.sym} 950 -90 0 0 {name=M8
l=1u
w=2u
m=1
model=nm
}
C {lab_wire.sym} 900 -90 0 0 {name=p7 sig_type=std_logic lab=Vg}
C {lab_wire.sym} 910 -210 0 0 {name=p16 sig_type=std_logic lab=count_out2}
C {nmos4.sym} 1200 -210 0 0 {name=M9
l=0.13u
w=10u
m=1
model=nm
}
C {nmos4.sym} 1200 -90 0 0 {name=M10
l=1u
w=2u
m=1
model=nm
}
C {lab_wire.sym} 1150 -90 0 0 {name=p1 sig_type=std_logic lab=Vg}
C {lab_wire.sym} 1160 -210 0 0 {name=p4 sig_type=std_logic lab=count_out3}
