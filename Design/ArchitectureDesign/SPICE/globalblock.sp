
simulator lang=spectre

include "localblock.sp"
include "senseamplifier.scs"

subckt globalblock (vdd_0 vdd_1 vdd_2 vdd_3 vss NBulkLine PBulkLine
+LWLencoded_0_0 LWLencoded_0_1 LWLencoded_0_2 LWLencoded_0_3 LWLencoded_1_0 LWLencoded_1_1 LWLencoded_1_2 LWLencoded_1_3
+LBLencoded_0_0 LBLencoded_0_1 LBLencoded_1_0 LBLencoded_1_1
+SelLB_0 SelLB_1 LBenbar_0 LBenbar_1 GBenable
+InOut InOutbar SA_SH EnableSAP EnableSAN)
parameters Rcell_0_0_0 Rcell_0_0_1 Rcell_0_0_2 Rcell_0_0_3 Rcell_0_0_4 Rcell_0_0_5 Rcell_0_0_6 Rcell_0_0_7 Rcell_0_0_8 Rcell_0_0_9 Rcell_0_0_10 Rcell_0_0_11 Rcell_0_0_12 Rcell_0_0_13 Rcell_0_0_14 Rcell_0_0_15 Rcell_0_1_0 Rcell_0_1_1 Rcell_0_1_2 Rcell_0_1_3 Rcell_0_1_4 Rcell_0_1_5 Rcell_0_1_6 Rcell_0_1_7 Rcell_0_1_8 Rcell_0_1_9 Rcell_0_1_10 Rcell_0_1_11 Rcell_0_1_12 Rcell_0_1_13 Rcell_0_1_14 Rcell_0_1_15 Rcell_0_2_0 Rcell_0_2_1 Rcell_0_2_2 Rcell_0_2_3 Rcell_0_2_4 Rcell_0_2_5 Rcell_0_2_6 Rcell_0_2_7 Rcell_0_2_8 Rcell_0_2_9 Rcell_0_2_10 Rcell_0_2_11 Rcell_0_2_12 Rcell_0_2_13 Rcell_0_2_14 Rcell_0_2_15 Rcell_0_3_0 Rcell_0_3_1 Rcell_0_3_2 Rcell_0_3_3 Rcell_0_3_4 Rcell_0_3_5 Rcell_0_3_6 Rcell_0_3_7 Rcell_0_3_8 Rcell_0_3_9 Rcell_0_3_10 Rcell_0_3_11 Rcell_0_3_12 Rcell_0_3_13 Rcell_0_3_14 Rcell_0_3_15 Rcell_1_0_0 Rcell_1_0_1 Rcell_1_0_2 Rcell_1_0_3 Rcell_1_0_4 Rcell_1_0_5 Rcell_1_0_6 Rcell_1_0_7 Rcell_1_0_8 Rcell_1_0_9 Rcell_1_0_10 Rcell_1_0_11 Rcell_1_0_12 Rcell_1_0_13 Rcell_1_0_14 Rcell_1_0_15 Rcell_1_1_0 Rcell_1_1_1 Rcell_1_1_2 Rcell_1_1_3 Rcell_1_1_4 Rcell_1_1_5 Rcell_1_1_6 Rcell_1_1_7 Rcell_1_1_8 Rcell_1_1_9 Rcell_1_1_10 Rcell_1_1_11 Rcell_1_1_12 Rcell_1_1_13 Rcell_1_1_14 Rcell_1_1_15 Rcell_1_2_0 Rcell_1_2_1 Rcell_1_2_2 Rcell_1_2_3 Rcell_1_2_4 Rcell_1_2_5 Rcell_1_2_6 Rcell_1_2_7 Rcell_1_2_8 Rcell_1_2_9 Rcell_1_2_10 Rcell_1_2_11 Rcell_1_2_12 Rcell_1_2_13 Rcell_1_2_14 Rcell_1_2_15 Rcell_1_3_0 Rcell_1_3_1 Rcell_1_3_2 Rcell_1_3_3 Rcell_1_3_4 Rcell_1_3_5 Rcell_1_3_6 Rcell_1_3_7 Rcell_1_3_8 Rcell_1_3_9 Rcell_1_3_10 Rcell_1_3_11 Rcell_1_3_12 Rcell_1_3_13 Rcell_1_3_14 Rcell_1_3_15

xNOT0 (SA_SH SA_SHbar vdd_0 vss PBulkLine NBulkLine) inverter // mux driver
xNOT1 (SA_SHbar SA_SHbuf vdd_0 vss PBulkLine NBulkLine) inverter

xNot_0 (GBenable GBenable_1 vdd_0 vss PBulkLine NBulkLine) inverter // delay for timing
xNot_1 (GBenable_1 GBenable_2 vdd_0 vss PBulkLine NBulkLine) inverter
xNot_2 (GBenable_2 GBenable_3 vdd_0 vss PBulkLine NBulkLine) inverter
xNot_3 (GBenable_3 GBenable_4 vdd_0 vss PBulkLine NBulkLine) inverter
xNot_4 (GBenable_4 GBenable_5 vdd_0 vss PBulkLine NBulkLine) inverter
xNot_5 (GBenable_5 Delay vdd_0 vss PBulkLine NBulkLine) inverter

xNand_ref_0 (LBenbar_0 GBenable tempnand_0 vdd_0 vss PBulkLine NBulkLine) twonand
xNot_ref_0 (tempnand_0 Refenable_0 vdd_0 vss PBulkLine NBulkLine) inverter
xNand_ref_1 (LBenbar_1 GBenable tempnand_1 vdd_0 vss PBulkLine NBulkLine) twonand
xNot_ref_1 (tempnand_1 Refenable_1 vdd_0 vss PBulkLine NBulkLine) inverter

xLB0 (vdd_0 vdd_2 vss NBulkLine PBulkLine LWLencoded_0_0 LWLencoded_0_1 LWLencoded_0_2 LWLencoded_0_3 LBLencoded_0_0 LBLencoded_0_1 SelLB_0 BLout_0 Delay Refenable_0) localblock Rcell_0_0 = Rcell_0_0_0 Rcell_0_1 = Rcell_0_0_1 Rcell_0_2 = Rcell_0_0_2 Rcell_0_3 = Rcell_0_0_3 Rcell_0_4 = Rcell_0_0_4 Rcell_0_5 = Rcell_0_0_5 Rcell_0_6 = Rcell_0_0_6 Rcell_0_7 = Rcell_0_0_7 Rcell_0_8 = Rcell_0_0_8 Rcell_0_9 = Rcell_0_0_9 Rcell_0_10 = Rcell_0_0_10 Rcell_0_11 = Rcell_0_0_11 Rcell_0_12 = Rcell_0_0_12 Rcell_0_13 = Rcell_0_0_13 Rcell_0_14 = Rcell_0_0_14 Rcell_0_15 = Rcell_0_0_15 Rcell_1_0 = Rcell_0_1_0 Rcell_1_1 = Rcell_0_1_1 Rcell_1_2 = Rcell_0_1_2 Rcell_1_3 = Rcell_0_1_3 Rcell_1_4 = Rcell_0_1_4 Rcell_1_5 = Rcell_0_1_5 Rcell_1_6 = Rcell_0_1_6 Rcell_1_7 = Rcell_0_1_7 Rcell_1_8 = Rcell_0_1_8 Rcell_1_9 = Rcell_0_1_9 Rcell_1_10 = Rcell_0_1_10 Rcell_1_11 = Rcell_0_1_11 Rcell_1_12 = Rcell_0_1_12 Rcell_1_13 = Rcell_0_1_13 Rcell_1_14 = Rcell_0_1_14 Rcell_1_15 = Rcell_0_1_15 Rcell_2_0 = Rcell_0_2_0 Rcell_2_1 = Rcell_0_2_1 Rcell_2_2 = Rcell_0_2_2 Rcell_2_3 = Rcell_0_2_3 Rcell_2_4 = Rcell_0_2_4 Rcell_2_5 = Rcell_0_2_5 Rcell_2_6 = Rcell_0_2_6 Rcell_2_7 = Rcell_0_2_7 Rcell_2_8 = Rcell_0_2_8 Rcell_2_9 = Rcell_0_2_9 Rcell_2_10 = Rcell_0_2_10 Rcell_2_11 = Rcell_0_2_11 Rcell_2_12 = Rcell_0_2_12 Rcell_2_13 = Rcell_0_2_13 Rcell_2_14 = Rcell_0_2_14 Rcell_2_15 = Rcell_0_2_15 Rcell_3_0 = Rcell_0_3_0 Rcell_3_1 = Rcell_0_3_1 Rcell_3_2 = Rcell_0_3_2 Rcell_3_3 = Rcell_0_3_3 Rcell_3_4 = Rcell_0_3_4 Rcell_3_5 = Rcell_0_3_5 Rcell_3_6 = Rcell_0_3_6 Rcell_3_7 = Rcell_0_3_7 Rcell_3_8 = Rcell_0_3_8 Rcell_3_9 = Rcell_0_3_9 Rcell_3_10 = Rcell_0_3_10 Rcell_3_11 = Rcell_0_3_11 Rcell_3_12 = Rcell_0_3_12 Rcell_3_13 = Rcell_0_3_13 Rcell_3_14 = Rcell_0_3_14 Rcell_3_15 = Rcell_0_3_15
xM0n BLout_0 SA_SHbuf InOut NBulkLine mosn_h w=PWmuxGB l=PLmin //mux
xM0p BLout_0 SA_SHbar InOut PBulkLine mosp_h w=PWmuxGB l=PLmin

xLB1 (vdd_0 vdd_2 vss NBulkLine PBulkLine LWLencoded_1_0 LWLencoded_1_1 LWLencoded_1_2 LWLencoded_1_3 LBLencoded_1_0 LBLencoded_1_1 SelLB_1 BLout_1 Delay Refenable_1) localblock Rcell_0_0 = Rcell_1_0_0 Rcell_0_1 = Rcell_1_0_1 Rcell_0_2 = Rcell_1_0_2 Rcell_0_3 = Rcell_1_0_3 Rcell_0_4 = Rcell_1_0_4 Rcell_0_5 = Rcell_1_0_5 Rcell_0_6 = Rcell_1_0_6 Rcell_0_7 = Rcell_1_0_7 Rcell_0_8 = Rcell_1_0_8 Rcell_0_9 = Rcell_1_0_9 Rcell_0_10 = Rcell_1_0_10 Rcell_0_11 = Rcell_1_0_11 Rcell_0_12 = Rcell_1_0_12 Rcell_0_13 = Rcell_1_0_13 Rcell_0_14 = Rcell_1_0_14 Rcell_0_15 = Rcell_1_0_15 Rcell_1_0 = Rcell_1_1_0 Rcell_1_1 = Rcell_1_1_1 Rcell_1_2 = Rcell_1_1_2 Rcell_1_3 = Rcell_1_1_3 Rcell_1_4 = Rcell_1_1_4 Rcell_1_5 = Rcell_1_1_5 Rcell_1_6 = Rcell_1_1_6 Rcell_1_7 = Rcell_1_1_7 Rcell_1_8 = Rcell_1_1_8 Rcell_1_9 = Rcell_1_1_9 Rcell_1_10 = Rcell_1_1_10 Rcell_1_11 = Rcell_1_1_11 Rcell_1_12 = Rcell_1_1_12 Rcell_1_13 = Rcell_1_1_13 Rcell_1_14 = Rcell_1_1_14 Rcell_1_15 = Rcell_1_1_15 Rcell_2_0 = Rcell_1_2_0 Rcell_2_1 = Rcell_1_2_1 Rcell_2_2 = Rcell_1_2_2 Rcell_2_3 = Rcell_1_2_3 Rcell_2_4 = Rcell_1_2_4 Rcell_2_5 = Rcell_1_2_5 Rcell_2_6 = Rcell_1_2_6 Rcell_2_7 = Rcell_1_2_7 Rcell_2_8 = Rcell_1_2_8 Rcell_2_9 = Rcell_1_2_9 Rcell_2_10 = Rcell_1_2_10 Rcell_2_11 = Rcell_1_2_11 Rcell_2_12 = Rcell_1_2_12 Rcell_2_13 = Rcell_1_2_13 Rcell_2_14 = Rcell_1_2_14 Rcell_2_15 = Rcell_1_2_15 Rcell_3_0 = Rcell_1_3_0 Rcell_3_1 = Rcell_1_3_1 Rcell_3_2 = Rcell_1_3_2 Rcell_3_3 = Rcell_1_3_3 Rcell_3_4 = Rcell_1_3_4 Rcell_3_5 = Rcell_1_3_5 Rcell_3_6 = Rcell_1_3_6 Rcell_3_7 = Rcell_1_3_7 Rcell_3_8 = Rcell_1_3_8 Rcell_3_9 = Rcell_1_3_9 Rcell_3_10 = Rcell_1_3_10 Rcell_3_11 = Rcell_1_3_11 Rcell_3_12 = Rcell_1_3_12 Rcell_3_13 = Rcell_1_3_13 Rcell_3_14 = Rcell_1_3_14 Rcell_3_15 = Rcell_1_3_15
xM1n BLout_1 SA_SHbuf InOutbar NBulkLine mc_nmos_hvt w=PWmuxGB l=PLmin
xM1p BLout_1 SA_SHbar InOutbar PBulkLine mc_pmos_hvt w=PWmuxGB l=PLmin

xSA (vdd_1 vss NBulkLine PBulkLine InOut InOutbar EnableSAP EnableSAN) senseamplifier


ends globalblock