simulator lang=spice

.include './latch.sp'
.include './memarray.sp'
.lib '../../../technology_models/tech_wrapper.lib' mc


simulator lang=spectre

mmemarray ( bl_1 bl_2 sel1_1 sel1_2 sel1_3 sel2_1 sel2_2 sel2_3 wl_1 wl_2 wl_3 sl_1 sl_2 sl_3 vload_1 vload_2 vload_3 gnd vdd ) memarray
mlatch (bl_1 bl_2 out outbar vdd gnd vdd gnd LE1 LE2 selL1 selL2) latch

vsel1_1 sel1_1 gnd vsource type=pwl wave=[0 1 4e-09 1 4.05e-09 0 1e-08 0]
vsel1_2 sel1_2 gnd vsource type=pwl wave=[0 1 4e-09 1 4.05e-09 0 1e-08 0]
vsel1_3 sel1_3 gnd vsource type=pwl wave=[0 1 4e-09 1 4.05e-09 0 1e-08 0]

vsel2_1 sel2_1 gnd vsource type=pwl wave=[0 0 5e-10 0 6e-10 1 2e-09 1 2.05e-09 0 8e-09 0]
vsel2_2 sel2_2 gnd vsource type=pwl wave=[0 0 5e-10 0 6e-10 1 2e-09 1 2.05e-09 0 8e-09 0]
vsel2_3 sel2_3 gnd vsource type=pwl wave=[0 0 5e-10 0 6e-10 1 2e-09 1 2.05e-09 0 8e-09 0]

vwl_1 wl_1 gnd vsource type=pwl wave=[0 0 3e-09 0 3.1e-09 1 8.5e-09 1]
vwl_2 wl_2 gnd vsource type=pwl wave=[0 0 3e-09 0 3.1e-09 1 8.5e-09 1]
vwl_3 wl_3 gnd vsource type=pwl wave=[0 0 3e-09 0 3.1e-09 1 8.5e-09 1]

vsl_1 sl_1 gnd vsource type=pwl wave=[0 0]
vsl_2 sl_2 gnd vsource type=pwl wave=[0 0]
vsl_3 sl_3 gnd vsource type=pwl wave=[0 0]

vvload_1 vload_1 gnd  vsource type=dc dc=1
vvload_2 vload_2 gnd  vsource type=dc dc=1
vvload_3 vload_3 gnd  vsource type=dc dc=1

vLE1 LE1 gnd vsource type=pwl wave=[0 1 7.2e-09 1 7.25e-09 0 1.22e-08 0]
vLE2 LE2 gnd vsource type=pwl wave=[0 0 7.2e-09 0 7.3e-09 1 1.22e-08 1]

vselL1 selL1 gnd vsource type=pwl wave=[0 0 6.5e-09 0 6.55e-09 0 6.7e-09 0 6.75e-09 0 1.17e-08 0]
vselL2 selL2 gnd vsource type=pwl wave=[0 0 6.5e-09 0 6.55e-09 0 6.7e-09 0 6.75e-09 0 1.17e-08 0]

vgnd gnd 0 vsource type=dc dc=0
vvdd vdd 0 vsource type=pwl wave=[0 0 0.01n 1]

ana tran step=1e-12 stop=1e-08