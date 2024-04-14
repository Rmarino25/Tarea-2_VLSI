*  Generated for: PrimeSim
*  Design library name: basic_cells
*  Design cell name: NORS
*  Design view name: schematic



.option PARHIER = LOCAL
.option PORT_VOLTAGE_SCALE_TO_2X = 1
.option S_ELEM_CACHE_DIR = "/home/Marino_Oviedo_I_2024_vlsi/.synopsys_custom/sparam_dir"
.option PVA_OUTPUT_DIR = "/home/Marino_Oviedo_I_2024_vlsi/.synopsys_custom/pva_dir"

.option WDF=1
.temp 25
.lib '/mnt/vol_NFS_rh003/Est_VLSI_I_2024/Marino_Oviedo_I_2024_vlsi/Tutorial_1/Hspice/lp5mos/xt018.lib' tm
.lib '/mnt/vol_NFS_rh003/Est_VLSI_I_2024/Marino_Oviedo_I_2024_vlsi/Tutorial_1/Hspice/lp5mos/param.lib' 3s
.lib '/mnt/vol_NFS_rh003/Est_VLSI_I_2024/Marino_Oviedo_I_2024_vlsi/Tutorial_1/Hspice/lp5mos/config.lib' default

*PrimeWave Design Environment Version U-2023.03-SP2
*Sat Apr 13 18:12:48 2024

.global gnd!
********************************************************************************
* Library          : basic_cells
* Cell             : NORS
* View             : schematic
* View Search List : hspice hspiceD schematic cmos_sch spice veriloga
* View Stop List   : hspice hspiceD
********************************************************************************
xm15 out out2 gnd! gnd! ne w=22.5u l=180n as=1.08e-11 ad=1.08e-11 ps=4.596e-05
+ pd=4.596e-05 nrs=0.012 nrd=0.012 m='1*1' par1='1*1' xf_subext=0
xm14 out out1 gnd! gnd! ne w=22.5u l=180n as=1.08e-11 ad=1.08e-11 ps=4.596e-05
+ pd=4.596e-05 nrs=0.012 nrd=0.012 m='1*1' par1='1*1' xf_subext=0
xm10 out1 a1 gnd! gnd! ne w=5.4u l=180n as=2.592e-12 ad=2.592e-12 ps=1.176e-05
+ pd=1.176e-05 nrs=0.05 nrd=0.05 m='1*1' par1='1*1' xf_subext=0
xm11 out1 b1 gnd! gnd! ne w=5.4u l=180n as=2.592e-12 ad=2.592e-12 ps=1.176e-05
+ pd=1.176e-05 nrs=0.05 nrd=0.05 m='1*1' par1='1*1' xf_subext=0
xm1 out2 d1 gnd! gnd! ne w=5.4u l=180n as=2.592e-12 ad=2.592e-12 ps=1.176e-05
+ pd=1.176e-05 nrs=0.05 nrd=0.05 m='1*1' par1='1*1' xf_subext=0
xm0 out2 c1 gnd! gnd! ne w=5.4u l=180n as=2.592e-12 ad=2.592e-12 ps=1.176e-05
+ pd=1.176e-05 nrs=0.05 nrd=0.05 m='1*1' par1='1*1' xf_subext=0
xm17 net32 out1 net46 net46 pe w=45u l=180n as=2.16e-11 ad=2.16e-11 ps=9.096e-05
+ pd=9.096e-05 nrs=0.006 nrd=0.006 m='1*1' par1='1*1' xf_subext=0
xm16 out out2 net32 net46 pe w=45u l=180n as=2.16e-11 ad=2.16e-11 ps=9.096e-05
+ pd=9.096e-05 nrs=0.006 nrd=0.006 m='1*1' par1='1*1' xf_subext=0
xm13 net29 a1 net40 net40 pe w=10.8u l=180n as=5.184e-12 ad=5.184e-12 ps=2.256e-05
+ pd=2.256e-05 nrs=0.025 nrd=0.025 m='1*1' par1='1*1' xf_subext=0
xm12 out1 b1 net29 net40 pe w=10.8u l=180n as=5.184e-12 ad=5.184e-12 ps=2.256e-05
+ pd=2.256e-05 nrs=0.025 nrd=0.025 m='1*1' par1='1*1' xf_subext=0
xm3 net17 c1 net43 net43 pe w=10.8u l=180n as=5.184e-12 ad=5.184e-12 ps=2.256e-05
+ pd=2.256e-05 nrs=0.025 nrd=0.025 m='1*1' par1='1*1' xf_subext=0
xm2 out2 d1 net17 net43 pe w=10.8u l=180n as=5.184e-12 ad=5.184e-12 ps=2.256e-05
+ pd=2.256e-05 nrs=0.025 nrd=0.025 m='1*1' par1='1*1' xf_subext=0
v30 d1 gnd! dc=0
v29 b1 gnd! dc=0
v23 net40 gnd! dc=1.8
v26 net46 gnd! dc=1.8
v10 a1 gnd! dc=1.8
v6 c1 gnd! dc=1.8
v24 net43 gnd! dc=1.8
c19 out gnd! c=450u








.tran 10p 15n start=0
.option opfile=1 split_dp=1
.option probe=1
.probe tran v(*) level=1
.probe tran v(A) v(B) v(C) v(D) v(out)








.end

