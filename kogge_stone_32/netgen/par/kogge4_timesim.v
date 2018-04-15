////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: kogge4_timesim.v
// /___/   /\     Timestamp: Sat Apr 14 13:41:03 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 3 -pcf kogge4.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim kogge4.ncd kogge4_timesim.v 
// Device	: 7a100tcsg324-3 (PRODUCTION 1.10 2013-10-13)
// Input file	: kogge4.ncd
// Output file	: /home/rcetin/workspace/ISE_workspace/kogge_stone_32/netgen/par/kogge4_timesim.v
// # of Modules	: 1
// Design Name	: kogge4
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module kogge4 (
  cin, cout, a, b, sum
);
  input cin;
  output cout;
  input [31 : 0] a;
  input [31 : 0] b;
  output [31 : 0] sum;
  wire \bp[25] ;
  wire \bp[24] ;
  wire \bp[22] ;
  wire N34;
  wire \st0g<22>_0 ;
  wire \st0g[24] ;
  wire N22;
  wire a_27_IBUF_927;
  wire b_27_IBUF_928;
  wire a_26_IBUF_929;
  wire b_26_IBUF_930;
  wire sum_26_OBUF_0;
  wire b_8_IBUF_933;
  wire a_8_IBUF_934;
  wire a_7_IBUF_935;
  wire b_7_IBUF_936;
  wire \carry<8>1_0 ;
  wire sum_9_OBUF_938;
  wire a_9_IBUF_939;
  wire b_9_IBUF_940;
  wire N40_0;
  wire sum_20_OBUF_942;
  wire \sb_20/Mxor_Si_xo<0>1_943 ;
  wire \gpgs1_19/G3 ;
  wire \gpgs1_17/G1 ;
  wire \carry[15] ;
  wire \st0p<16>_0 ;
  wire \st0p<18>_0 ;
  wire a_29_IBUF_949;
  wire b_29_IBUF_950;
  wire b_28_IBUF_951;
  wire a_28_IBUF_952;
  wire sum_30_OBUF_953;
  wire a_30_IBUF_954;
  wire b_30_IBUF_955;
  wire \carry[18] ;
  wire \sb_18/Mxor_Si_xo<0>1_957 ;
  wire a_17_IBUF_958;
  wire b_17_IBUF_959;
  wire \gpgs1_16/G3 ;
  wire \carry<18>1_961 ;
  wire \gpgs1_18/G2_0 ;
  wire \gpgs1_20/G1 ;
  wire a_20_IBUF_964;
  wire b_20_IBUF_965;
  wire a_19_IBUF_966;
  wire b_19_IBUF_967;
  wire N10_0;
  wire \carry[2] ;
  wire \bp[1] ;
  wire N2_0;
  wire b_0_IBUF_972;
  wire cin_IBUF_973;
  wire a_0_IBUF_974;
  wire \gpgs1_2/G2 ;
  wire \gpgs1_4/G1 ;
  wire a_4_IBUF_977;
  wire b_4_IBUF_978;
  wire a_3_IBUF_979;
  wire b_3_IBUF_980;
  wire N36_0;
  wire \carry<26>2_0 ;
  wire \st0g<23>_0 ;
  wire \carry[22] ;
  wire \bp[23] ;
  wire \carry<26>1 ;
  wire sum_27_OBUF_987;
  wire N26_0;
  wire cout_OBUF_989;
  wire b_31_IBUF_990;
  wire \cc_29/carry2 ;
  wire a_31_IBUF_992;
  wire \carry[27] ;
  wire \carry<27>1_994 ;
  wire sum_0_OBUF_995;
  wire sum_10_OBUF_996;
  wire a_10_IBUF_997;
  wire b_10_IBUF_998;
  wire \carry[9] ;
  wire sum_17_OBUF_1000;
  wire \gpgs0_16/P1_1001 ;
  wire \gpgs1_14/G2 ;
  wire \carry[12] ;
  wire \st0p<13>_0 ;
  wire \st0p<15>_0 ;
  wire N12;
  wire b_6_IBUF_1007;
  wire a_6_IBUF_1008;
  wire sum_8_OBUF_1009;
  wire N16_0;
  wire \sb_4/Mxor_Si_xo<0>1_1011 ;
  wire N4;
  wire sum_5_OBUF_1013;
  wire a_5_IBUF_1014;
  wire b_5_IBUF_1015;
  wire sum_23_OBUF_1016;
  wire a_23_IBUF_1017;
  wire b_23_IBUF_1018;
  wire sum_15_OBUF_1019;
  wire \gpgs0_14/P1 ;
  wire \gpgs1_12/G2 ;
  wire \carry[10] ;
  wire \st0p<11>_0 ;
  wire N32;
  wire sum_29_OBUF_0;
  wire b_2_IBUF_1026;
  wire \carry[1] ;
  wire a_2_IBUF_1028;
  wire \carry<5>_0 ;
  wire sum_3_OBUF_1030;
  wire sum_13_OBUF_1031;
  wire a_13_IBUF_1032;
  wire b_13_IBUF_1033;
  wire sum_28_OBUF_1034;
  wire N18;
  wire sum_11_OBUF_1036;
  wire a_11_IBUF_1037;
  wire b_11_IBUF_1038;
  wire sum_31_OBUF_1039;
  wire sum_12_OBUF_1040;
  wire a_12_IBUF_1041;
  wire b_12_IBUF_1042;
  wire \carry<15>1_0 ;
  wire \carry<20>2_1044 ;
  wire \st0g[21] ;
  wire N8_0;
  wire b_25_IBUF_1047;
  wire a_25_IBUF_1048;
  wire sum_25_OBUF_0;
  wire sum_7_OBUF_0;
  wire sum_6_OBUF_1051;
  wire sum_16_OBUF_1052;
  wire a_16_IBUF_1053;
  wire b_16_IBUF_1054;
  wire \carry<20>1_0 ;
  wire sum_21_OBUF_1056;
  wire a_21_IBUF_1057;
  wire b_21_IBUF_1058;
  wire \carry[23] ;
  wire a_22_IBUF_1060;
  wire b_22_IBUF_1061;
  wire \gpgs1_21/G1 ;
  wire \carry<23>1_1063 ;
  wire \cc_3/carry2 ;
  wire N28_0;
  wire sum_4_OBUF_0;
  wire a_24_IBUF_1067;
  wire b_24_IBUF_1068;
  wire a_1_IBUF_1069;
  wire b_1_IBUF_1070;
  wire \carry[17] ;
  wire a_18_IBUF_1072;
  wire b_18_IBUF_1073;
  wire sum_18_OBUF_0;
  wire \st0p[20] ;
  wire sum_22_OBUF_1076;
  wire sum_19_OBUF_1077;
  wire a_15_IBUF_1078;
  wire b_15_IBUF_1079;
  wire sum_14_OBUF_1080;
  wire a_14_IBUF_1081;
  wire b_14_IBUF_1082;
  wire \carry[13] ;
  wire sum_2_OBUF_1084;
  wire sum_1_OBUF_0;
  wire sum_24_OBUF_0;
  wire \st0g[10] ;
  wire N30;
  wire \carry[8] ;
  wire N14;
  wire \st0g[6] ;
  wire \carry[7] ;
  wire \carry[6] ;
  wire \carry[4] ;
  wire \cc_5/carry ;
  wire \carry[11] ;
  wire \carry[3] ;
  wire N38;
  wire \carry[20] ;
  wire \carry[24] ;
  wire \carry[25] ;
  wire \carry[30] ;
  wire \carry[28] ;
  wire \carry[29] ;
  wire N24;
  wire \carry[26] ;
  wire \ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \cin/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<0>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<10>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<1>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<11>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<2>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<12>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<20>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<3>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<13>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<21>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<0>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<4>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<14>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<22>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<30>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<1>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<5>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<15>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<23>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<31>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<2>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<6>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<16>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<24>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<3>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<7>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<17>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<25>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<4>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<10>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<8>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<18>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<26>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<5>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<11>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<9>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<19>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<27>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<6>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<12>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<20>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<28>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<7>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<13>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<21>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \a<29>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<8>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<14>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<22>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<30>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<9>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<15>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<23>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<31>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<16>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<24>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<17>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<25>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<18>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<26>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<19>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<27>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire \b<28>/ProtoComp37.INTERMDISABLE_GND.0 ;
  wire N30_pack_1;
  wire N40;
  wire N14_pack_1;
  wire N16;
  wire \st0p[11] ;
  wire \st0p[15] ;
  wire sum_7_OBUF_349;
  wire \carry<8>1_364 ;
  wire \carry[5] ;
  wire \carry<15>1_406 ;
  wire \st0p[13] ;
  wire sum_4_OBUF_427;
  wire N2;
  wire N36;
  wire N38_pack_1;
  wire \carry<15>_pack_1 ;
  wire sum_1_OBUF_510;
  wire N28;
  wire \st0p[16] ;
  wire sum_24_OBUF_548;
  wire sum_18_OBUF_578;
  wire N10;
  wire \st0p[18] ;
  wire \gpgs1_18/G2 ;
  wire \carry<20>1_615 ;
  wire \st0g<21>_pack_3 ;
  wire N8;
  wire \st0p<20>_pack_6 ;
  wire sum_25_OBUF_685;
  wire \st0g[23] ;
  wire \st0g[22] ;
  wire sum_26_OBUF_726;
  wire \st0g<24>_pack_2 ;
  wire sum_29_OBUF_751;
  wire \carry<26>2_766 ;
  wire N24_pack_2;
  wire N26;
  wire \NlwBufferSignal_sum_10_OBUF/I ;
  wire \NlwBufferSignal_sum_11_OBUF/I ;
  wire \NlwBufferSignal_sum_12_OBUF/I ;
  wire \NlwBufferSignal_sum_20_OBUF/I ;
  wire \NlwBufferSignal_sum_13_OBUF/I ;
  wire \NlwBufferSignal_sum_21_OBUF/I ;
  wire \NlwBufferSignal_sum_0_OBUF/I ;
  wire \NlwBufferSignal_sum_14_OBUF/I ;
  wire \NlwBufferSignal_sum_22_OBUF/I ;
  wire \NlwBufferSignal_sum_30_OBUF/I ;
  wire \NlwBufferSignal_sum_1_OBUF/I ;
  wire \NlwBufferSignal_sum_15_OBUF/I ;
  wire \NlwBufferSignal_sum_23_OBUF/I ;
  wire \NlwBufferSignal_sum_31_OBUF/I ;
  wire \NlwBufferSignal_sum_2_OBUF/I ;
  wire \NlwBufferSignal_sum_16_OBUF/I ;
  wire \NlwBufferSignal_sum_24_OBUF/I ;
  wire \NlwBufferSignal_sum_3_OBUF/I ;
  wire \NlwBufferSignal_sum_17_OBUF/I ;
  wire \NlwBufferSignal_sum_25_OBUF/I ;
  wire \NlwBufferSignal_sum_4_OBUF/I ;
  wire \NlwBufferSignal_sum_18_OBUF/I ;
  wire \NlwBufferSignal_sum_26_OBUF/I ;
  wire \NlwBufferSignal_sum_5_OBUF/I ;
  wire \NlwBufferSignal_sum_19_OBUF/I ;
  wire \NlwBufferSignal_sum_27_OBUF/I ;
  wire \NlwBufferSignal_sum_6_OBUF/I ;
  wire \NlwBufferSignal_sum_28_OBUF/I ;
  wire \NlwBufferSignal_sum_7_OBUF/I ;
  wire \NlwBufferSignal_sum_29_OBUF/I ;
  wire \NlwBufferSignal_cout_OBUF/I ;
  wire \NlwBufferSignal_sum_8_OBUF/I ;
  wire \NlwBufferSignal_sum_9_OBUF/I ;
  initial $sdf_annotate("netgen/par/kogge4_timesim.sdf");
  X_IPAD #(
    .LOC ( "IOB_X0Y120" ))
  \b<29>  (
    .PAD(b[29])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y120" ))
  \ProtoComp37.INTERMDISABLE_GND  (
    .O(\ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y120" ))
  b_29_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_29_IBUF_950),
    .I(b[29]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y146" ))
  cin_8 (
    .PAD(cin)
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y146" ))
  \ProtoComp37.INTERMDISABLE_GND.1  (
    .O(\cin/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y146" ))
  cin_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\cin/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(cin_IBUF_973),
    .I(cin),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y118" ))
  \sum<10>  (
    .PAD(sum[10])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y118" ))
  sum_10_OBUF (
    .I(\NlwBufferSignal_sum_10_OBUF/I ),
    .O(sum[10])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y113" ))
  \sum<11>  (
    .PAD(sum[11])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y113" ))
  sum_11_OBUF (
    .I(\NlwBufferSignal_sum_11_OBUF/I ),
    .O(sum[11])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y112" ))
  \sum<12>  (
    .PAD(sum[12])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y112" ))
  sum_12_OBUF (
    .I(\NlwBufferSignal_sum_12_OBUF/I ),
    .O(sum[12])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y116" ))
  \sum<20>  (
    .PAD(sum[20])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y116" ))
  sum_20_OBUF (
    .I(\NlwBufferSignal_sum_20_OBUF/I ),
    .O(sum[20])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y110" ))
  \sum<13>  (
    .PAD(sum[13])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y110" ))
  sum_13_OBUF (
    .I(\NlwBufferSignal_sum_13_OBUF/I ),
    .O(sum[13])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y117" ))
  \sum<21>  (
    .PAD(sum[21])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y117" ))
  sum_21_OBUF (
    .I(\NlwBufferSignal_sum_21_OBUF/I ),
    .O(sum[21])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y142" ))
  \sum<0>  (
    .PAD(sum[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y142" ))
  sum_0_OBUF (
    .I(\NlwBufferSignal_sum_0_OBUF/I ),
    .O(sum[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y115" ))
  \sum<14>  (
    .PAD(sum[14])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y115" ))
  sum_14_OBUF (
    .I(\NlwBufferSignal_sum_14_OBUF/I ),
    .O(sum[14])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y122" ))
  \sum<22>  (
    .PAD(sum[22])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y122" ))
  sum_22_OBUF (
    .I(\NlwBufferSignal_sum_22_OBUF/I ),
    .O(sum[22])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y103" ))
  \sum<30>  (
    .PAD(sum[30])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y103" ))
  sum_30_OBUF (
    .I(\NlwBufferSignal_sum_30_OBUF/I ),
    .O(sum[30])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y140" ))
  \sum<1>  (
    .PAD(sum[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y140" ))
  sum_1_OBUF (
    .I(\NlwBufferSignal_sum_1_OBUF/I ),
    .O(sum[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y111" ))
  \sum<15>  (
    .PAD(sum[15])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y111" ))
  sum_15_OBUF (
    .I(\NlwBufferSignal_sum_15_OBUF/I ),
    .O(sum[15])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y120" ))
  \sum<23>  (
    .PAD(sum[23])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y120" ))
  sum_23_OBUF (
    .I(\NlwBufferSignal_sum_23_OBUF/I ),
    .O(sum[23])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y102" ))
  \sum<31>  (
    .PAD(sum[31])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y102" ))
  sum_31_OBUF (
    .I(\NlwBufferSignal_sum_31_OBUF/I ),
    .O(sum[31])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y141" ))
  \sum<2>  (
    .PAD(sum[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y141" ))
  sum_2_OBUF (
    .I(\NlwBufferSignal_sum_2_OBUF/I ),
    .O(sum[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y114" ))
  \sum<16>  (
    .PAD(sum[16])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y114" ))
  sum_16_OBUF (
    .I(\NlwBufferSignal_sum_16_OBUF/I ),
    .O(sum[16])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y130" ))
  \sum<24>  (
    .PAD(sum[24])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y130" ))
  sum_24_OBUF (
    .I(\NlwBufferSignal_sum_24_OBUF/I ),
    .O(sum[24])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y144" ))
  \sum<3>  (
    .PAD(sum[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y144" ))
  sum_3_OBUF (
    .I(\NlwBufferSignal_sum_3_OBUF/I ),
    .O(sum[3])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y109" ))
  \sum<17>  (
    .PAD(sum[17])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y109" ))
  sum_17_OBUF (
    .I(\NlwBufferSignal_sum_17_OBUF/I ),
    .O(sum[17])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y108" ))
  \sum<25>  (
    .PAD(sum[25])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y108" ))
  sum_25_OBUF (
    .I(\NlwBufferSignal_sum_25_OBUF/I ),
    .O(sum[25])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y139" ))
  \sum<4>  (
    .PAD(sum[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y139" ))
  sum_4_OBUF (
    .I(\NlwBufferSignal_sum_4_OBUF/I ),
    .O(sum[4])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y119" ))
  \sum<18>  (
    .PAD(sum[18])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y119" ))
  sum_18_OBUF (
    .I(\NlwBufferSignal_sum_18_OBUF/I ),
    .O(sum[18])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y107" ))
  \sum<26>  (
    .PAD(sum[26])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y107" ))
  sum_26_OBUF (
    .I(\NlwBufferSignal_sum_26_OBUF/I ),
    .O(sum[26])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y147" ))
  \a<0>  (
    .PAD(a[0])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y147" ))
  \ProtoComp37.INTERMDISABLE_GND.2  (
    .O(\a<0>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y147" ))
  a_0_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<0>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_0_IBUF_974),
    .I(a[0]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y107" ))
  \a<10>  (
    .PAD(a[10])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y107" ))
  \ProtoComp37.INTERMDISABLE_GND.3  (
    .O(\a<10>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y107" ))
  a_10_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<10>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_10_IBUF_997),
    .I(a[10]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y132" ))
  \sum<5>  (
    .PAD(sum[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y132" ))
  sum_5_OBUF (
    .I(\NlwBufferSignal_sum_5_OBUF/I ),
    .O(sum[5])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y121" ))
  \sum<19>  (
    .PAD(sum[19])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y121" ))
  sum_19_OBUF (
    .I(\NlwBufferSignal_sum_19_OBUF/I ),
    .O(sum[19])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y106" ))
  \sum<27>  (
    .PAD(sum[27])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y106" ))
  sum_27_OBUF (
    .I(\NlwBufferSignal_sum_27_OBUF/I ),
    .O(sum[27])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y116" ))
  \a<1>  (
    .PAD(a[1])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y116" ))
  \ProtoComp37.INTERMDISABLE_GND.4  (
    .O(\a<1>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y116" ))
  a_1_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<1>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_1_IBUF_1069),
    .I(a[1]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y106" ))
  \a<11>  (
    .PAD(a[11])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y106" ))
  \ProtoComp37.INTERMDISABLE_GND.5  (
    .O(\a<11>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y106" ))
  a_11_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<11>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_11_IBUF_1037),
    .I(a[11]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y128" ))
  \sum<6>  (
    .PAD(sum[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y128" ))
  sum_6_OBUF (
    .I(\NlwBufferSignal_sum_6_OBUF/I ),
    .O(sum[6])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y105" ))
  \sum<28>  (
    .PAD(sum[28])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y105" ))
  sum_28_OBUF (
    .I(\NlwBufferSignal_sum_28_OBUF/I ),
    .O(sum[28])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y142" ))
  \a<2>  (
    .PAD(a[2])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y142" ))
  \ProtoComp37.INTERMDISABLE_GND.6  (
    .O(\a<2>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y142" ))
  a_2_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<2>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_2_IBUF_1028),
    .I(a[2]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y105" ))
  \a<12>  (
    .PAD(a[12])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y105" ))
  \ProtoComp37.INTERMDISABLE_GND.7  (
    .O(\a<12>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y105" ))
  a_12_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<12>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_12_IBUF_1041),
    .I(a[12]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y147" ))
  \a<20>  (
    .PAD(a[20])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y147" ))
  \ProtoComp37.INTERMDISABLE_GND.8  (
    .O(\a<20>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y147" ))
  a_20_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<20>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_20_IBUF_964),
    .I(a[20]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y126" ))
  \sum<7>  (
    .PAD(sum[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y126" ))
  sum_7_OBUF (
    .I(\NlwBufferSignal_sum_7_OBUF/I ),
    .O(sum[7])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y104" ))
  \sum<29>  (
    .PAD(sum[29])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y104" ))
  sum_29_OBUF (
    .I(\NlwBufferSignal_sum_29_OBUF/I ),
    .O(sum[29])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y114" ))
  \a<3>  (
    .PAD(a[3])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y114" ))
  \ProtoComp37.INTERMDISABLE_GND.9  (
    .O(\a<3>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y114" ))
  a_3_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<3>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_3_IBUF_979),
    .I(a[3]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y104" ))
  \a<13>  (
    .PAD(a[13])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y104" ))
  \ProtoComp37.INTERMDISABLE_GND.10  (
    .O(\a<13>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y104" ))
  a_13_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<13>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_13_IBUF_1032),
    .I(a[13]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y146" ))
  \a<21>  (
    .PAD(a[21])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y146" ))
  \ProtoComp37.INTERMDISABLE_GND.11  (
    .O(\a<21>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y146" ))
  a_21_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<21>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_21_IBUF_1057),
    .I(a[21]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y124" ))
  cout_141 (
    .PAD(cout)
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y124" ))
  cout_OBUF (
    .I(\NlwBufferSignal_cout_OBUF/I ),
    .O(cout)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y125" ))
  \sum<8>  (
    .PAD(sum[8])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y125" ))
  sum_8_OBUF (
    .I(\NlwBufferSignal_sum_8_OBUF/I ),
    .O(sum[8])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y149" ))
  \b<0>  (
    .PAD(b[0])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y149" ))
  \ProtoComp37.INTERMDISABLE_GND.12  (
    .O(\b<0>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y149" ))
  b_0_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<0>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_0_IBUF_972),
    .I(b[0]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y113" ))
  \a<4>  (
    .PAD(a[4])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y113" ))
  \ProtoComp37.INTERMDISABLE_GND.13  (
    .O(\a<4>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y113" ))
  a_4_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<4>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_4_IBUF_977),
    .I(a[4]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y103" ))
  \a<14>  (
    .PAD(a[14])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y103" ))
  \ProtoComp37.INTERMDISABLE_GND.14  (
    .O(\a<14>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y103" ))
  a_14_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<14>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_14_IBUF_1081),
    .I(a[14]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y145" ))
  \a<22>  (
    .PAD(a[22])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y145" ))
  \ProtoComp37.INTERMDISABLE_GND.15  (
    .O(\a<22>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y145" ))
  a_22_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<22>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_22_IBUF_1060),
    .I(a[22]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y134" ))
  \a<30>  (
    .PAD(a[30])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y134" ))
  \ProtoComp37.INTERMDISABLE_GND.16  (
    .O(\a<30>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y134" ))
  a_30_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<30>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_30_IBUF_954),
    .I(a[30]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y123" ))
  \sum<9>  (
    .PAD(sum[9])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y123" ))
  sum_9_OBUF (
    .I(\NlwBufferSignal_sum_9_OBUF/I ),
    .O(sum[9])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y143" ))
  \b<1>  (
    .PAD(b[1])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y143" ))
  \ProtoComp37.INTERMDISABLE_GND.17  (
    .O(\b<1>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y143" ))
  b_1_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<1>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_1_IBUF_1070),
    .I(b[1]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y112" ))
  \a<5>  (
    .PAD(a[5])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y112" ))
  \ProtoComp37.INTERMDISABLE_GND.18  (
    .O(\a<5>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y112" ))
  a_5_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<5>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_5_IBUF_1014),
    .I(a[5]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y102" ))
  \a<15>  (
    .PAD(a[15])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y102" ))
  \ProtoComp37.INTERMDISABLE_GND.19  (
    .O(\a<15>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y102" ))
  a_15_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<15>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_15_IBUF_1078),
    .I(a[15]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y137" ))
  \a<23>  (
    .PAD(a[23])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y137" ))
  \ProtoComp37.INTERMDISABLE_GND.20  (
    .O(\a<23>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y137" ))
  a_23_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<23>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_23_IBUF_1017),
    .I(a[23]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y127" ))
  \a<31>  (
    .PAD(a[31])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y127" ))
  \ProtoComp37.INTERMDISABLE_GND.21  (
    .O(\a<31>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y127" ))
  a_31_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<31>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_31_IBUF_992),
    .I(a[31]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y144" ))
  \b<2>  (
    .PAD(b[2])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y144" ))
  \ProtoComp37.INTERMDISABLE_GND.22  (
    .O(\b<2>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y144" ))
  b_2_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<2>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_2_IBUF_1026),
    .I(b[2]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y111" ))
  \a<6>  (
    .PAD(a[6])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y111" ))
  \ProtoComp37.INTERMDISABLE_GND.23  (
    .O(\a<6>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y111" ))
  a_6_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<6>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_6_IBUF_1008),
    .I(a[6]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y101" ))
  \a<16>  (
    .PAD(a[16])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y101" ))
  \ProtoComp37.INTERMDISABLE_GND.24  (
    .O(\a<16>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y101" ))
  a_16_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<16>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_16_IBUF_1053),
    .I(a[16]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y143" ))
  \a<24>  (
    .PAD(a[24])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y143" ))
  \ProtoComp37.INTERMDISABLE_GND.25  (
    .O(\a<24>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y143" ))
  a_24_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<24>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_24_IBUF_1067),
    .I(a[24]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y145" ))
  \b<3>  (
    .PAD(b[3])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y145" ))
  \ProtoComp37.INTERMDISABLE_GND.26  (
    .O(\b<3>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y145" ))
  b_3_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<3>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_3_IBUF_980),
    .I(b[3]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y110" ))
  \a<7>  (
    .PAD(a[7])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y110" ))
  \ProtoComp37.INTERMDISABLE_GND.27  (
    .O(\a<7>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y110" ))
  a_7_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<7>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_7_IBUF_935),
    .I(a[7]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y100" ))
  \a<17>  (
    .PAD(a[17])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y100" ))
  \ProtoComp37.INTERMDISABLE_GND.28  (
    .O(\a<17>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y100" ))
  a_17_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<17>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_17_IBUF_958),
    .I(a[17]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y135" ))
  \a<25>  (
    .PAD(a[25])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y135" ))
  \ProtoComp37.INTERMDISABLE_GND.29  (
    .O(\a<25>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y135" ))
  a_25_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<25>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_25_IBUF_1048),
    .I(a[25]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y148" ))
  \b<4>  (
    .PAD(b[4])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y148" ))
  \ProtoComp37.INTERMDISABLE_GND.30  (
    .O(\b<4>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y148" ))
  b_4_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<4>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_4_IBUF_978),
    .I(b[4]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y137" ))
  \b<10>  (
    .PAD(b[10])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y137" ))
  \ProtoComp37.INTERMDISABLE_GND.31  (
    .O(\b<10>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y137" ))
  b_10_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<10>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_10_IBUF_998),
    .I(b[10]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y109" ))
  \a<8>  (
    .PAD(a[8])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y109" ))
  \ProtoComp37.INTERMDISABLE_GND.32  (
    .O(\a<8>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y109" ))
  a_8_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<8>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_8_IBUF_934),
    .I(a[8]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y149" ))
  \a<18>  (
    .PAD(a[18])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y149" ))
  \ProtoComp37.INTERMDISABLE_GND.33  (
    .O(\a<18>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y149" ))
  a_18_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<18>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_18_IBUF_1072),
    .I(a[18]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y138" ))
  \a<26>  (
    .PAD(a[26])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y138" ))
  \ProtoComp37.INTERMDISABLE_GND.34  (
    .O(\a<26>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y138" ))
  a_26_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<26>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_26_IBUF_929),
    .I(a[26]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y141" ))
  \b<5>  (
    .PAD(b[5])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y141" ))
  \ProtoComp37.INTERMDISABLE_GND.35  (
    .O(\b<5>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y141" ))
  b_5_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<5>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_5_IBUF_1015),
    .I(b[5]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y131" ))
  \b<11>  (
    .PAD(b[11])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y131" ))
  \ProtoComp37.INTERMDISABLE_GND.36  (
    .O(\b<11>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y131" ))
  b_11_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<11>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_11_IBUF_1038),
    .I(b[11]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y108" ))
  \a<9>  (
    .PAD(a[9])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y108" ))
  \ProtoComp37.INTERMDISABLE_GND.37  (
    .O(\a<9>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y108" ))
  a_9_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<9>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_9_IBUF_939),
    .I(a[9]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y148" ))
  \a<19>  (
    .PAD(a[19])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y148" ))
  \ProtoComp37.INTERMDISABLE_GND.38  (
    .O(\a<19>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y148" ))
  a_19_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<19>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_19_IBUF_966),
    .I(a[19]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y133" ))
  \a<27>  (
    .PAD(a[27])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y133" ))
  \ProtoComp37.INTERMDISABLE_GND.39  (
    .O(\a<27>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y133" ))
  a_27_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<27>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_27_IBUF_927),
    .I(a[27]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y139" ))
  \b<6>  (
    .PAD(b[6])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y139" ))
  \ProtoComp37.INTERMDISABLE_GND.40  (
    .O(\b<6>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y139" ))
  b_6_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<6>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_6_IBUF_1007),
    .I(b[6]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y135" ))
  \b<12>  (
    .PAD(b[12])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y135" ))
  \ProtoComp37.INTERMDISABLE_GND.41  (
    .O(\b<12>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y135" ))
  b_12_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<12>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_12_IBUF_1042),
    .I(b[12]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y124" ))
  \b<20>  (
    .PAD(b[20])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y124" ))
  \ProtoComp37.INTERMDISABLE_GND.42  (
    .O(\b<20>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y124" ))
  b_20_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<20>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_20_IBUF_965),
    .I(b[20]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y136" ))
  \a<28>  (
    .PAD(a[28])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y136" ))
  \ProtoComp37.INTERMDISABLE_GND.43  (
    .O(\a<28>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y136" ))
  a_28_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<28>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_28_IBUF_952),
    .I(a[28]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y138" ))
  \b<7>  (
    .PAD(b[7])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y138" ))
  \ProtoComp37.INTERMDISABLE_GND.44  (
    .O(\b<7>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y138" ))
  b_7_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<7>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_7_IBUF_936),
    .I(b[7]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y122" ))
  \b<13>  (
    .PAD(b[13])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y122" ))
  \ProtoComp37.INTERMDISABLE_GND.45  (
    .O(\b<13>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y122" ))
  b_13_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<13>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_13_IBUF_1033),
    .I(b[13]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y128" ))
  \b<21>  (
    .PAD(b[21])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y128" ))
  \ProtoComp37.INTERMDISABLE_GND.46  (
    .O(\b<21>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y128" ))
  b_21_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<21>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_21_IBUF_1058),
    .I(b[21]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y131" ))
  \a<29>  (
    .PAD(a[29])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y131" ))
  \ProtoComp37.INTERMDISABLE_GND.47  (
    .O(\a<29>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y131" ))
  a_29_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\a<29>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(a_29_IBUF_949),
    .I(a[29]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y136" ))
  \b<8>  (
    .PAD(b[8])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y136" ))
  \ProtoComp37.INTERMDISABLE_GND.48  (
    .O(\b<8>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y136" ))
  b_8_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<8>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_8_IBUF_933),
    .I(b[8]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y134" ))
  \b<14>  (
    .PAD(b[14])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y134" ))
  \ProtoComp37.INTERMDISABLE_GND.49  (
    .O(\b<14>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y134" ))
  b_14_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<14>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_14_IBUF_1082),
    .I(b[14]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y127" ))
  \b<22>  (
    .PAD(b[22])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y127" ))
  \ProtoComp37.INTERMDISABLE_GND.50  (
    .O(\b<22>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y127" ))
  b_22_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<22>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_22_IBUF_1061),
    .I(b[22]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y126" ))
  \b<30>  (
    .PAD(b[30])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y126" ))
  \ProtoComp37.INTERMDISABLE_GND.51  (
    .O(\b<30>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y126" ))
  b_30_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<30>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_30_IBUF_955),
    .I(b[30]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y132" ))
  \b<9>  (
    .PAD(b[9])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y132" ))
  \ProtoComp37.INTERMDISABLE_GND.52  (
    .O(\b<9>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y132" ))
  b_9_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<9>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_9_IBUF_940),
    .I(b[9]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y119" ))
  \b<15>  (
    .PAD(b[15])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y119" ))
  \ProtoComp37.INTERMDISABLE_GND.53  (
    .O(\b<15>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y119" ))
  b_15_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<15>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_15_IBUF_1079),
    .I(b[15]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y129" ))
  \b<23>  (
    .PAD(b[23])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y129" ))
  \ProtoComp37.INTERMDISABLE_GND.54  (
    .O(\b<23>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y129" ))
  b_23_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<23>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_23_IBUF_1018),
    .I(b[23]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y118" ))
  \b<31>  (
    .PAD(b[31])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y118" ))
  \ProtoComp37.INTERMDISABLE_GND.55  (
    .O(\b<31>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y118" ))
  b_31_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<31>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_31_IBUF_990),
    .I(b[31]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y133" ))
  \b<16>  (
    .PAD(b[16])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y133" ))
  \ProtoComp37.INTERMDISABLE_GND.56  (
    .O(\b<16>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y133" ))
  b_16_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<16>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_16_IBUF_1054),
    .I(b[16]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y140" ))
  \b<24>  (
    .PAD(b[24])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y140" ))
  \ProtoComp37.INTERMDISABLE_GND.57  (
    .O(\b<24>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y140" ))
  b_24_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<24>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_24_IBUF_1068),
    .I(b[24]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y115" ))
  \b<17>  (
    .PAD(b[17])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y115" ))
  \ProtoComp37.INTERMDISABLE_GND.58  (
    .O(\b<17>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y115" ))
  b_17_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<17>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_17_IBUF_959),
    .I(b[17]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y129" ))
  \b<25>  (
    .PAD(b[25])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y129" ))
  \ProtoComp37.INTERMDISABLE_GND.59  (
    .O(\b<25>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y129" ))
  b_25_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<25>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_25_IBUF_1047),
    .I(b[25]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y121" ))
  \b<18>  (
    .PAD(b[18])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y121" ))
  \ProtoComp37.INTERMDISABLE_GND.60  (
    .O(\b<18>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y121" ))
  b_18_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<18>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_18_IBUF_1073),
    .I(b[18]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y130" ))
  \b<26>  (
    .PAD(b[26])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y130" ))
  \ProtoComp37.INTERMDISABLE_GND.61  (
    .O(\b<26>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y130" ))
  b_26_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<26>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_26_IBUF_930),
    .I(b[26]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y123" ))
  \b<19>  (
    .PAD(b[19])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y123" ))
  \ProtoComp37.INTERMDISABLE_GND.62  (
    .O(\b<19>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y123" ))
  b_19_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<19>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_19_IBUF_967),
    .I(b[19]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y125" ))
  \b<27>  (
    .PAD(b[27])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y125" ))
  \ProtoComp37.INTERMDISABLE_GND.63  (
    .O(\b<27>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y125" ))
  b_27_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<27>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_27_IBUF_928),
    .I(b[27]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y117" ))
  \b<28>  (
    .PAD(b[28])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y117" ))
  \ProtoComp37.INTERMDISABLE_GND.64  (
    .O(\b<28>/ProtoComp37.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y117" ))
  b_28_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\b<28>/ProtoComp37.INTERMDISABLE_GND.0 ),
    .O(b_28_IBUF_951),
    .I(b[28]),
    .TPWRGT(1'b1)
  );
  X_BUF   \st0g<10>/st0g<10>_DMUX_Delay  (
    .I(N30_pack_1),
    .O(N30)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y113" ),
    .INIT ( 64'hE8E8C0C0E8E8C0C0 ))
  \gpgs0_10/G1  (
    .ADR3(1'b1),
    .ADR1(a_11_IBUF_1037),
    .ADR2(b_11_IBUF_1038),
    .ADR4(a_10_IBUF_997),
    .ADR0(b_10_IBUF_998),
    .ADR5(1'b1),
    .O(\st0g[10] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X13Y113" ),
    .INIT ( 32'h14002800 ))
  \carry<13>4_SW0  (
    .ADR3(\carry[9] ),
    .ADR1(a_11_IBUF_1037),
    .ADR2(b_11_IBUF_1038),
    .ADR4(a_10_IBUF_997),
    .ADR0(b_10_IBUF_998),
    .O(N30_pack_1)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y113" ),
    .INIT ( 64'hFEE0FEE0FEE0F880 ))
  \carry<13>4  (
    .ADR3(a_13_IBUF_1032),
    .ADR0(a_12_IBUF_1041),
    .ADR1(b_12_IBUF_1042),
    .ADR4(\st0g[10] ),
    .ADR5(N30),
    .ADR2(b_13_IBUF_1033),
    .O(\carry[13] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y117" ),
    .INIT ( 64'hAA5555AAAA5555AA ))
  \sb_10/Mxor_Si_xo<0>1  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(a_10_IBUF_997),
    .ADR0(b_10_IBUF_998),
    .ADR3(\carry[9] ),
    .O(sum_10_OBUF_996)
  );
  X_BUF   \sum_9_OBUF/sum_9_OBUF_BMUX_Delay  (
    .I(N40),
    .O(N40_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y126" ),
    .INIT ( 64'hAA5555AAAA5555AA ))
  \sb_9/Mxor_Si_xo<0>1  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR3(a_9_IBUF_939),
    .ADR0(b_9_IBUF_940),
    .ADR4(\carry[8] ),
    .ADR5(1'b1),
    .O(sum_9_OBUF_938)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X13Y126" ),
    .INIT ( 32'hFFAAAA00 ))
  \carry<12>_SW1  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR3(a_9_IBUF_939),
    .ADR0(b_9_IBUF_940),
    .ADR4(\carry[8] ),
    .O(N40)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y126" ),
    .INIT ( 64'hFFF0FAA0FAA0F000 ))
  \carry<8>2  (
    .ADR1(1'b1),
    .ADR3(b_8_IBUF_933),
    .ADR2(a_8_IBUF_934),
    .ADR5(a_7_IBUF_935),
    .ADR4(b_7_IBUF_936),
    .ADR0(\carry<8>1_0 ),
    .O(\carry[8] )
  );
  X_BUF   \st0g<6>/st0g<6>_DMUX_Delay  (
    .I(N14_pack_1),
    .O(N14)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y128" ),
    .INIT ( 64'hFFA0A000FFA0A000 ))
  \gpgs0_6/G1  (
    .ADR1(1'b1),
    .ADR3(a_7_IBUF_935),
    .ADR4(b_7_IBUF_936),
    .ADR2(a_6_IBUF_1008),
    .ADR0(b_6_IBUF_1007),
    .ADR5(1'b1),
    .O(\st0g[6] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X13Y128" ),
    .INIT ( 32'hFFB7B7FF ))
  \carry<9>_SW0  (
    .ADR1(\carry<5>_0 ),
    .ADR3(a_7_IBUF_935),
    .ADR4(b_7_IBUF_936),
    .ADR2(a_6_IBUF_1008),
    .ADR0(b_6_IBUF_1007),
    .O(N14_pack_1)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y128" ),
    .INIT ( 64'hFEE0F880FEE0FEE0 ))
  \carry<9>  (
    .ADR2(b_9_IBUF_940),
    .ADR1(a_8_IBUF_934),
    .ADR0(b_8_IBUF_933),
    .ADR5(N14),
    .ADR4(\st0g[6] ),
    .ADR3(a_9_IBUF_939),
    .O(\carry[9] )
  );
  X_BUF   \sum_8_OBUF/sum_8_OBUF_BMUX_Delay  (
    .I(N16),
    .O(N16_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y126" ),
    .INIT ( 64'hC3C33C3CC3C33C3C ))
  \sb_8/Mxor_Si_xo<0>1  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(a_8_IBUF_934),
    .ADR1(b_8_IBUF_933),
    .ADR4(\carry[7] ),
    .ADR5(1'b1),
    .O(sum_8_OBUF_1009)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y126" ),
    .INIT ( 32'hFEA8EA80 ))
  \carry<11>_SW0  (
    .ADR3(a_9_IBUF_939),
    .ADR0(b_9_IBUF_940),
    .ADR2(a_8_IBUF_934),
    .ADR1(b_8_IBUF_933),
    .ADR4(\carry[7] ),
    .O(N16)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y126" ),
    .INIT ( 64'hFAE8FAE8E8A0E8A0 ))
  \cc_7/carry  (
    .ADR4(1'b1),
    .ADR0(a_7_IBUF_935),
    .ADR2(b_7_IBUF_936),
    .ADR1(N12),
    .ADR3(b_6_IBUF_1007),
    .ADR5(a_6_IBUF_1008),
    .O(\carry[7] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y112" ),
    .INIT ( 64'hAAA8A8A8A0A0A0A0 ))
  \carry<18>1  (
    .ADR0(\st0p<15>_0 ),
    .ADR5(\st0p<13>_0 ),
    .ADR1(\gpgs1_12/G2 ),
    .ADR3(\carry[10] ),
    .ADR4(\st0p<11>_0 ),
    .ADR2(\gpgs1_14/G2 ),
    .O(\carry<18>1_961 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y112" ),
    .INIT ( 64'hFAFAE8E8E8E8A0A0 ))
  \carry<10>  (
    .ADR3(1'b1),
    .ADR2(a_10_IBUF_997),
    .ADR0(b_10_IBUF_998),
    .ADR1(N18),
    .ADR4(b_9_IBUF_940),
    .ADR5(a_9_IBUF_939),
    .O(\carry[10] )
  );
  X_BUF   \gpgs1_16/G3/gpgs1_16/G3_CMUX_Delay  (
    .I(\st0p[15] ),
    .O(\st0p<15>_0 )
  );
  X_BUF   \gpgs1_16/G3/gpgs1_16/G3_BMUX_Delay  (
    .I(\st0p[11] ),
    .O(\st0p<11>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y113" ),
    .INIT ( 64'hE8E8A0A0E8E8A0A0 ))
  \gpgs1_16/G31  (
    .ADR3(1'b1),
    .ADR0(a_16_IBUF_1053),
    .ADR2(b_16_IBUF_1054),
    .ADR1(a_15_IBUF_1078),
    .ADR4(b_15_IBUF_1079),
    .ADR5(1'b1),
    .O(\gpgs1_16/G3 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y113" ),
    .INIT ( 32'h12124848 ))
  \gpgs0_15/P1  (
    .ADR3(1'b1),
    .ADR0(a_16_IBUF_1053),
    .ADR2(b_16_IBUF_1054),
    .ADR1(a_15_IBUF_1078),
    .ADR4(b_15_IBUF_1079),
    .O(\st0p[15] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y113" ),
    .INIT ( 64'hFFA0A000FFA0A000 ))
  \gpgs1_12/G21  (
    .ADR1(1'b1),
    .ADR3(a_12_IBUF_1041),
    .ADR4(b_12_IBUF_1042),
    .ADR0(a_11_IBUF_1037),
    .ADR2(b_11_IBUF_1038),
    .ADR5(1'b1),
    .O(\gpgs1_12/G2 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y113" ),
    .INIT ( 32'h005A5A00 ))
  \gpgs0_11/P1  (
    .ADR1(1'b1),
    .ADR3(a_12_IBUF_1041),
    .ADR4(b_12_IBUF_1042),
    .ADR0(a_11_IBUF_1037),
    .ADR2(b_11_IBUF_1038),
    .O(\st0p[11] )
  );
  X_BUF   \N18/N18_BMUX_Delay  (
    .I(sum_7_OBUF_349),
    .O(sum_7_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y128" ),
    .INIT ( 64'hEEE8E888EEE8E888 ))
  \carry<10>_SW0  (
    .ADR0(a_8_IBUF_934),
    .ADR1(b_8_IBUF_933),
    .ADR2(a_7_IBUF_935),
    .ADR3(b_7_IBUF_936),
    .ADR4(\carry[6] ),
    .ADR5(1'b1),
    .O(N18)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y128" ),
    .INIT ( 32'hF00F0FF0 ))
  \sb_7/Mxor_Si_xo<0>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(a_7_IBUF_935),
    .ADR3(b_7_IBUF_936),
    .ADR4(\carry[6] ),
    .O(sum_7_OBUF_349)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y128" ),
    .INIT ( 64'hFFFCF0C0FEF8E080 ))
  \cc_6/carry3  (
    .ADR4(a_6_IBUF_1008),
    .ADR3(a_5_IBUF_1014),
    .ADR1(b_5_IBUF_1015),
    .ADR5(\gpgs1_4/G1 ),
    .ADR0(N36_0),
    .ADR2(b_6_IBUF_1007),
    .O(\carry[6] )
  );
  X_BUF   \sum_5_OBUF/sum_5_OBUF_BMUX_Delay  (
    .I(\carry<8>1_364 ),
    .O(\carry<8>1_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y139" ),
    .INIT ( 64'hA5A55A5AA5A55A5A ))
  \sb_5/Mxor_Si_xo<0>1  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR0(a_5_IBUF_1014),
    .ADR2(b_5_IBUF_1015),
    .ADR4(\carry[4] ),
    .ADR5(1'b1),
    .O(sum_5_OBUF_1013)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y139" ),
    .INIT ( 32'hFEC8EC80 ))
  \carry<8>1  (
    .ADR1(a_6_IBUF_1008),
    .ADR3(b_6_IBUF_1007),
    .ADR0(a_5_IBUF_1014),
    .ADR2(b_5_IBUF_1015),
    .ADR4(\carry[4] ),
    .O(\carry<8>1_364 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y139" ),
    .INIT ( 64'hFF0AFF02FFA0FF20 ))
  \cc_4/carry  (
    .ADR0(\sb_4/Mxor_Si_xo<0>1_1011 ),
    .ADR4(\gpgs1_2/G2 ),
    .ADR5(b_3_IBUF_980),
    .ADR2(a_3_IBUF_979),
    .ADR1(N4),
    .ADR3(\gpgs1_4/G1 ),
    .O(\carry[4] )
  );
  X_BUF   \sb_4/Mxor_Si_xo<0>1/sb_4/Mxor_Si_xo<0>1_BMUX_Delay  (
    .I(\carry[5] ),
    .O(\carry<5>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y140" ),
    .INIT ( 64'h6666666666666666 ))
  \sb_4/Mxor_Si_xo<0>11  (
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR0(a_4_IBUF_977),
    .ADR1(b_4_IBUF_978),
    .ADR5(1'b1),
    .O(\sb_4/Mxor_Si_xo<0>1_1011 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y140" ),
    .INIT ( 32'hFFF0F880 ))
  \cc_5/carry2  (
    .ADR3(a_5_IBUF_1014),
    .ADR2(b_5_IBUF_1015),
    .ADR4(\cc_5/carry ),
    .ADR0(a_4_IBUF_977),
    .ADR1(b_4_IBUF_978),
    .O(\carry[5] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y140" ),
    .INIT ( 64'hF0E0C080E0C08000 ))
  \cc_5/carry1  (
    .ADR2(\sb_4/Mxor_Si_xo<0>1_1011 ),
    .ADR1(a_3_IBUF_979),
    .ADR4(b_3_IBUF_980),
    .ADR3(b_2_IBUF_1026),
    .ADR5(\carry[1] ),
    .ADR0(a_2_IBUF_1028),
    .O(\cc_5/carry )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y112" ),
    .INIT ( 64'hFCFCFCF0FCFCF0F0 ))
  \carry<20>2  (
    .ADR0(1'b1),
    .ADR1(\st0p<15>_0 ),
    .ADR4(\gpgs1_14/G2 ),
    .ADR3(\carry[12] ),
    .ADR5(\st0p<13>_0 ),
    .ADR2(\gpgs1_16/G3 ),
    .O(\carry<20>2_1044 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y112" ),
    .INIT ( 64'hFFE8FF00FFE8FF00 ))
  \carry<12>  (
    .ADR5(1'b1),
    .ADR4(\st0p<11>_0 ),
    .ADR2(a_10_IBUF_997),
    .ADR0(b_10_IBUF_998),
    .ADR1(N40_0),
    .ADR3(\gpgs1_12/G2 ),
    .O(\carry[12] )
  );
  X_BUF   \sum_12_OBUF/sum_12_OBUF_DMUX_Delay  (
    .I(\carry<15>1_406 ),
    .O(\carry<15>1_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y113" ),
    .INIT ( 64'hC33CC33CC33CC33C ))
  \sb_12/Mxor_Si_xo<0>1  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(a_12_IBUF_1041),
    .ADR1(b_12_IBUF_1042),
    .ADR3(\carry[11] ),
    .ADR5(1'b1),
    .O(sum_12_OBUF_1040)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X15Y113" ),
    .INIT ( 32'hFEEAA880 ))
  \carry<15>1  (
    .ADR4(a_13_IBUF_1032),
    .ADR0(b_13_IBUF_1033),
    .ADR2(a_12_IBUF_1041),
    .ADR1(b_12_IBUF_1042),
    .ADR3(\carry[11] ),
    .O(\carry<15>1_406 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y113" ),
    .INIT ( 64'hFFFAAAA0FAAAA000 ))
  \carry<11>  (
    .ADR1(1'b1),
    .ADR4(a_11_IBUF_1037),
    .ADR0(b_11_IBUF_1038),
    .ADR3(a_10_IBUF_997),
    .ADR5(b_10_IBUF_998),
    .ADR2(N16_0),
    .O(\carry[11] )
  );
  X_BUF   \gpgs1_14/G2/gpgs1_14/G2_DMUX_Delay  (
    .I(\st0p[13] ),
    .O(\st0p<13>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y114" ),
    .INIT ( 64'hF8F88080F8F88080 ))
  \gpgs1_14/G21  (
    .ADR3(1'b1),
    .ADR4(a_14_IBUF_1081),
    .ADR2(b_14_IBUF_1082),
    .ADR0(a_13_IBUF_1032),
    .ADR1(b_13_IBUF_1033),
    .ADR5(1'b1),
    .O(\gpgs1_14/G2 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X15Y114" ),
    .INIT ( 32'h06066060 ))
  \gpgs0_13/P1  (
    .ADR3(1'b1),
    .ADR4(a_14_IBUF_1081),
    .ADR2(b_14_IBUF_1082),
    .ADR0(a_13_IBUF_1032),
    .ADR1(b_13_IBUF_1033),
    .O(\st0p[13] )
  );
  X_BUF   \N12/N12_BMUX_Delay  (
    .I(sum_4_OBUF_427),
    .O(sum_4_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y140" ),
    .INIT ( 64'hFCE8E8C0FCE8E8C0 ))
  \cc_7/carry_SW0  (
    .ADR1(a_5_IBUF_1014),
    .ADR2(b_5_IBUF_1015),
    .ADR0(a_4_IBUF_977),
    .ADR3(b_4_IBUF_978),
    .ADR4(\carry[3] ),
    .ADR5(1'b1),
    .O(N12)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X15Y140" ),
    .INIT ( 32'hAA5555AA ))
  \sb_4/Mxor_Si_xo<0>1  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(a_4_IBUF_977),
    .ADR3(b_4_IBUF_978),
    .ADR4(\carry[3] ),
    .O(sum_4_OBUF_427)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y140" ),
    .INIT ( 64'hFEFEFEF8E0E0E080 ))
  \cc_3/carry5  (
    .ADR5(a_3_IBUF_979),
    .ADR0(a_2_IBUF_1028),
    .ADR1(b_2_IBUF_1026),
    .ADR4(\cc_3/carry2 ),
    .ADR3(N28_0),
    .ADR2(b_3_IBUF_980),
    .O(\carry[3] )
  );
  X_BUF   \gpgs1_2/G2/gpgs1_2/G2_AMUX_Delay  (
    .I(N2),
    .O(N2_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y141" ),
    .INIT ( 64'hE8E88888E8E88888 ))
  \gpgs1_2/G21  (
    .ADR3(1'b1),
    .ADR0(a_2_IBUF_1028),
    .ADR1(b_2_IBUF_1026),
    .ADR2(a_1_IBUF_1069),
    .ADR4(b_1_IBUF_1070),
    .ADR5(1'b1),
    .O(\gpgs1_2/G2 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X15Y141" ),
    .INIT ( 32'h99999999 ))
  \cc_2/carry_SW0  (
    .ADR2(1'b1),
    .ADR0(a_2_IBUF_1028),
    .ADR1(b_2_IBUF_1026),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(N2)
  );
  X_BUF   \gpgs1_4/G1/gpgs1_4/G1_BMUX_Delay  (
    .I(N36),
    .O(N36_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y146" ),
    .INIT ( 64'hE888E888E888E888 ))
  \gpgs1_4/G11  (
    .ADR4(1'b1),
    .ADR1(a_4_IBUF_977),
    .ADR0(b_4_IBUF_978),
    .ADR3(a_3_IBUF_979),
    .ADR2(b_3_IBUF_980),
    .ADR5(1'b1),
    .O(\gpgs1_4/G1 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X15Y146" ),
    .INIT ( 32'h06600000 ))
  \cc_6/carry3_SW0  (
    .ADR4(\carry[2] ),
    .ADR1(a_4_IBUF_977),
    .ADR0(b_4_IBUF_978),
    .ADR3(a_3_IBUF_979),
    .ADR2(b_3_IBUF_980),
    .O(N36)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y146" ),
    .INIT ( 64'hFFFF0000FFFFE800 ))
  \cc_2/carry  (
    .ADR3(\bp[1] ),
    .ADR5(N2_0),
    .ADR2(b_0_IBUF_972),
    .ADR1(cin_IBUF_973),
    .ADR0(a_0_IBUF_974),
    .ADR4(\gpgs1_2/G2 ),
    .O(\carry[2] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y111" ),
    .INIT ( 64'h9999999966666666 ))
  \sb_13/Mxor_Si_xo<0>1  (
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR0(a_13_IBUF_1032),
    .ADR5(b_13_IBUF_1033),
    .ADR1(\carry[12] ),
    .O(sum_13_OBUF_1031)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y112" ),
    .INIT ( 64'h0111FEEE3333CCCC ))
  \sb_17/Mxor_Si_xo<0>1  (
    .ADR4(\gpgs0_16/P1_1001 ),
    .ADR1(\gpgs1_16/G3 ),
    .ADR0(\gpgs1_14/G2 ),
    .ADR2(\carry[12] ),
    .ADR3(\st0p<13>_0 ),
    .ADR5(\st0p<15>_0 ),
    .O(sum_17_OBUF_1000)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y113" ),
    .INIT ( 64'hAAAA55555555AAAA ))
  \sb_11/Mxor_Si_xo<0>1  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR0(a_11_IBUF_1037),
    .ADR4(b_11_IBUF_1038),
    .ADR5(\carry[10] ),
    .O(sum_11_OBUF_1036)
  );
  X_BUF   \sum_14_OBUF/sum_14_OBUF_CMUX_Delay  (
    .I(N38_pack_1),
    .O(N38)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y114" ),
    .INIT ( 64'hCC3333CCCC3333CC ))
  \sb_14/Mxor_Si_xo<0>1  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(a_14_IBUF_1081),
    .ADR4(b_14_IBUF_1082),
    .ADR3(\carry[13] ),
    .ADR5(1'b1),
    .O(sum_14_OBUF_1080)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y114" ),
    .INIT ( 32'hFFCCCC00 ))
  \carry<17>_SW1  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(a_14_IBUF_1081),
    .ADR4(b_14_IBUF_1082),
    .ADR3(\carry[13] ),
    .O(N38_pack_1)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y114" ),
    .INIT ( 64'hFCFCFCF0FCF0F0F0 ))
  \carry<17>  (
    .ADR0(1'b1),
    .ADR1(\st0p<16>_0 ),
    .ADR5(a_15_IBUF_1078),
    .ADR3(b_15_IBUF_1079),
    .ADR4(N38),
    .ADR2(\gpgs1_17/G1 ),
    .O(\carry[17] )
  );
  X_BUF   \gpgs0_14/P1/gpgs0_14/P1_BMUX_Delay  (
    .I(\carry<15>_pack_1 ),
    .O(\carry[15] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y115" ),
    .INIT ( 64'h33CC33CC33CC33CC ))
  \gpgs0_14/P11  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(a_15_IBUF_1078),
    .ADR1(b_15_IBUF_1079),
    .ADR5(1'b1),
    .O(\gpgs0_14/P1 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y115" ),
    .INIT ( 32'hFEC8EC80 ))
  \carry<15>2  (
    .ADR2(\carry<15>1_0 ),
    .ADR0(a_14_IBUF_1081),
    .ADR4(b_14_IBUF_1082),
    .ADR3(a_15_IBUF_1078),
    .ADR1(b_15_IBUF_1079),
    .O(\carry<15>_pack_1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y115" ),
    .INIT ( 64'hF0C0F0C0F080F000 ))
  \carry<23>1  (
    .ADR2(\st0p[20] ),
    .ADR1(\st0p<18>_0 ),
    .ADR5(\gpgs1_17/G1 ),
    .ADR0(\carry[15] ),
    .ADR4(\st0p<16>_0 ),
    .ADR3(\gpgs1_19/G3 ),
    .O(\carry<23>1_1063 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y128" ),
    .INIT ( 64'hA5A55A5AA5A55A5A ))
  \sb_6/Mxor_Si_xo<0>1  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(a_6_IBUF_1008),
    .ADR2(b_6_IBUF_1007),
    .ADR0(\carry<5>_0 ),
    .O(sum_6_OBUF_1051)
  );
  X_BUF   \cc_3/carry2/cc_3/carry2_AMUX_Delay  (
    .I(sum_1_OBUF_510),
    .O(sum_1_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y139" ),
    .INIT ( 64'hFAA0F000FAA0F000 ))
  \cc_3/carry3  (
    .ADR1(1'b1),
    .ADR2(a_1_IBUF_1069),
    .ADR3(b_1_IBUF_1070),
    .ADR4(a_0_IBUF_974),
    .ADR0(b_0_IBUF_972),
    .ADR5(1'b1),
    .O(\cc_3/carry2 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y139" ),
    .INIT ( 32'hE11E8778 ))
  \sb_1/Mxor_Si_xo<0>1  (
    .ADR1(cin_IBUF_973),
    .ADR2(a_1_IBUF_1069),
    .ADR3(b_1_IBUF_1070),
    .ADR4(a_0_IBUF_974),
    .ADR0(b_0_IBUF_972),
    .O(sum_1_OBUF_510)
  );
  X_BUF   \carry<1>/carry<1>_BMUX_Delay  (
    .I(N28),
    .O(N28_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y140" ),
    .INIT ( 64'hFFE8E800FFE8E800 ))
  \cc_1/carry1  (
    .ADR3(a_1_IBUF_1069),
    .ADR4(b_1_IBUF_1070),
    .ADR2(b_0_IBUF_972),
    .ADR1(cin_IBUF_973),
    .ADR0(a_0_IBUF_974),
    .ADR5(1'b1),
    .O(\carry[1] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y140" ),
    .INIT ( 32'h00484800 ))
  \cc_3/carry5_SW0  (
    .ADR3(a_1_IBUF_1069),
    .ADR4(b_1_IBUF_1070),
    .ADR2(b_0_IBUF_972),
    .ADR1(cin_IBUF_973),
    .ADR0(a_0_IBUF_974),
    .O(N28)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y140" ),
    .INIT ( 64'h9966996699669966 ))
  \sb_2/Mxor_Si_xo<0>1  (
    .ADR4(1'b1),
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR0(a_2_IBUF_1028),
    .ADR1(b_2_IBUF_1026),
    .ADR3(\carry[1] ),
    .O(sum_2_OBUF_1084)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X29Y112" ),
    .INIT ( 64'h3366366636663666 ))
  \sb_15/Mxor_Si_xo<0>1  (
    .ADR1(\gpgs0_14/P1 ),
    .ADR0(\gpgs1_14/G2 ),
    .ADR2(\gpgs1_12/G2 ),
    .ADR5(\carry[10] ),
    .ADR4(\st0p<11>_0 ),
    .ADR3(\st0p<13>_0 ),
    .O(sum_15_OBUF_1019)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X29Y113" ),
    .INIT ( 64'h9999666699996666 ))
  \sb_16/Mxor_Si_xo<0>1  (
    .ADR3(1'b1),
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR0(a_16_IBUF_1053),
    .ADR1(b_16_IBUF_1054),
    .ADR4(\carry[15] ),
    .O(sum_16_OBUF_1052)
  );
  X_BUF   \gpgs1_17/G1/gpgs1_17/G1_DMUX_Delay  (
    .I(\st0p[16] ),
    .O(\st0p<16>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X29Y114" ),
    .INIT ( 64'hE8E8A0A0E8E8A0A0 ))
  \gpgs1_17/G11  (
    .ADR3(1'b1),
    .ADR2(a_17_IBUF_958),
    .ADR0(b_17_IBUF_959),
    .ADR1(a_16_IBUF_1053),
    .ADR4(b_16_IBUF_1054),
    .ADR5(1'b1),
    .O(\gpgs1_17/G1 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X29Y114" ),
    .INIT ( 32'h12124848 ))
  \gpgs0_16/P1  (
    .ADR3(1'b1),
    .ADR2(a_17_IBUF_958),
    .ADR0(b_17_IBUF_959),
    .ADR1(a_16_IBUF_1053),
    .ADR4(b_16_IBUF_1054),
    .O(\st0p[16] )
  );
  X_BUF   \bp<1>/bp<1>_BMUX_Delay  (
    .I(sum_24_OBUF_548),
    .O(sum_24_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X29Y139" ),
    .INIT ( 64'h5A5A5A5A5A5A5A5A ))
  \bpg_1/Mxor_bp_1_xo<0>1  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(a_1_IBUF_1069),
    .ADR0(b_1_IBUF_1070),
    .ADR5(1'b1),
    .O(\bp[1] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X29Y139" ),
    .INIT ( 32'hCC3333CC ))
  \sb_24/Mxor_Si_xo<0>1  (
    .ADR3(a_24_IBUF_1067),
    .ADR1(b_24_IBUF_1068),
    .ADR4(\carry[23] ),
    .ADR0(1'b1),
    .ADR2(1'b1),
    .O(sum_24_OBUF_548)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X29Y139" ),
    .INIT ( 64'hCDFF37FFDFFF7FFF ))
  \cc_4/carry_SW0  (
    .ADR2(a_0_IBUF_974),
    .ADR5(cin_IBUF_973),
    .ADR0(b_0_IBUF_972),
    .ADR1(b_2_IBUF_1026),
    .ADR4(a_2_IBUF_1028),
    .ADR3(\bp[1] ),
    .O(N4)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X29Y141" ),
    .INIT ( 64'hA5A55A5AA5A55A5A ))
  \sb_0/Mxor_Si_xo<0>1  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(a_0_IBUF_974),
    .ADR0(b_0_IBUF_972),
    .ADR4(cin_IBUF_973),
    .O(sum_0_OBUF_995)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X29Y146" ),
    .INIT ( 64'hC3C33C3CC3C33C3C ))
  \sb_3/Mxor_Si_xo<0>1  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .ADR1(a_3_IBUF_979),
    .ADR4(b_3_IBUF_980),
    .ADR2(\carry[2] ),
    .O(sum_3_OBUF_1030)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X33Y115" ),
    .INIT ( 64'h05FA05FA07F80FF0 ))
  \sb_20/Mxor_Si_xo<0>1  (
    .ADR3(\sb_20/Mxor_Si_xo<0>1_943 ),
    .ADR2(\gpgs1_19/G3 ),
    .ADR5(\gpgs1_17/G1 ),
    .ADR1(\carry[15] ),
    .ADR4(\st0p<16>_0 ),
    .ADR0(\st0p<18>_0 ),
    .O(sum_20_OBUF_942)
  );
  X_BUF   \gpgs0_16/P1/gpgs0_16/P1_DMUX_Delay  (
    .I(sum_18_OBUF_578),
    .O(sum_18_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X44Y121" ),
    .INIT ( 64'h3333CCCC3333CCCC ))
  \gpgs0_16/P11  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(a_17_IBUF_958),
    .ADR4(b_17_IBUF_959),
    .ADR5(1'b1),
    .O(\gpgs0_16/P1_1001 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X44Y121" ),
    .INIT ( 32'hA55AA55A ))
  \sb_18/Mxor_Si_xo<0>1  (
    .ADR3(\carry[17] ),
    .ADR2(a_18_IBUF_1072),
    .ADR0(b_18_IBUF_1073),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .O(sum_18_OBUF_578)
  );
  X_BUF   \gpgs1_19/G3/gpgs1_19/G3_DMUX_Delay  (
    .I(\st0p[18] ),
    .O(\st0p<18>_0 )
  );
  X_BUF   \gpgs1_19/G3/gpgs1_19/G3_CMUX_Delay  (
    .I(N10),
    .O(N10_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X44Y122" ),
    .INIT ( 64'hF8F88080F8F88080 ))
  \gpgs1_19/G31  (
    .ADR3(1'b1),
    .ADR2(a_19_IBUF_966),
    .ADR4(b_19_IBUF_967),
    .ADR1(a_18_IBUF_1072),
    .ADR0(b_18_IBUF_1073),
    .ADR5(1'b1),
    .O(\gpgs1_19/G3 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X44Y122" ),
    .INIT ( 32'h06066060 ))
  \gpgs0_18/P1  (
    .ADR3(1'b1),
    .ADR2(a_19_IBUF_966),
    .ADR4(b_19_IBUF_967),
    .ADR1(a_18_IBUF_1072),
    .ADR0(b_18_IBUF_1073),
    .O(\st0p[18] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X44Y122" ),
    .INIT ( 64'hEA80EA80EA80EA80 ))
  \gpgs1_20/G11  (
    .ADR4(1'b1),
    .ADR0(a_20_IBUF_964),
    .ADR3(b_20_IBUF_965),
    .ADR1(a_19_IBUF_966),
    .ADR2(b_19_IBUF_967),
    .ADR5(1'b1),
    .O(\gpgs1_20/G1 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X44Y122" ),
    .INIT ( 32'hEBD7FFFF ))
  \carry<22>_SW0  (
    .ADR4(\carry[18] ),
    .ADR0(a_20_IBUF_964),
    .ADR3(b_20_IBUF_965),
    .ADR1(a_19_IBUF_966),
    .ADR2(b_19_IBUF_967),
    .O(N10)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X44Y122" ),
    .INIT ( 64'hDCDCECECDCCCECCC ))
  \carry<18>2  (
    .ADR2(\sb_18/Mxor_Si_xo<0>1_957 ),
    .ADR0(a_17_IBUF_958),
    .ADR4(b_17_IBUF_959),
    .ADR3(\gpgs1_16/G3 ),
    .ADR5(\carry<18>1_961 ),
    .ADR1(\gpgs1_18/G2_0 ),
    .O(\carry[18] )
  );
  X_BUF   \sb_18/Mxor_Si_xo<0>1/sb_18/Mxor_Si_xo<0>1_DMUX_Delay  (
    .I(\gpgs1_18/G2 ),
    .O(\gpgs1_18/G2_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X45Y122" ),
    .INIT ( 64'h55AA55AA55AA55AA ))
  \sb_18/Mxor_Si_xo<0>11  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(a_18_IBUF_1072),
    .ADR0(b_18_IBUF_1073),
    .ADR5(1'b1),
    .O(\sb_18/Mxor_Si_xo<0>1_957 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X45Y122" ),
    .INIT ( 32'hEA80EA80 ))
  \gpgs1_18/G21  (
    .ADR4(1'b1),
    .ADR2(a_17_IBUF_958),
    .ADR1(b_17_IBUF_959),
    .ADR3(a_18_IBUF_1072),
    .ADR0(b_18_IBUF_1073),
    .O(\gpgs1_18/G2 )
  );
  X_BUF   \sum_19_OBUF/sum_19_OBUF_AMUX_Delay  (
    .I(\carry<20>1_615 ),
    .O(\carry<20>1_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y122" ),
    .INIT ( 64'hC3C33C3CC3C33C3C ))
  \sb_19/Mxor_Si_xo<0>1  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(a_19_IBUF_966),
    .ADR1(b_19_IBUF_967),
    .ADR2(\carry[18] ),
    .ADR5(1'b1),
    .O(sum_19_OBUF_1077)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X51Y122" ),
    .INIT ( 32'h11224488 ))
  \carry<20>1  (
    .ADR3(a_20_IBUF_964),
    .ADR0(b_20_IBUF_965),
    .ADR4(a_19_IBUF_966),
    .ADR1(b_19_IBUF_967),
    .ADR2(1'b1),
    .O(\carry<20>1_615 )
  );
  X_BUF   \bp<22>/bp<22>_DMUX_Delay  (
    .I(\st0g<21>_pack_3 ),
    .O(\st0g[21] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y126" ),
    .INIT ( 64'h55AA55AA55AA55AA ))
  \bpg_1/Mxor_bp_22_xo<0>1  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(a_22_IBUF_1060),
    .ADR0(b_22_IBUF_1061),
    .ADR5(1'b1),
    .O(\bp[22] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X51Y126" ),
    .INIT ( 32'hEE88AA00 ))
  \gpgs0_21/G1  (
    .ADR2(1'b1),
    .ADR4(a_21_IBUF_1057),
    .ADR1(b_21_IBUF_1058),
    .ADR3(a_22_IBUF_1060),
    .ADR0(b_22_IBUF_1061),
    .O(\st0g<21>_pack_3 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y126" ),
    .INIT ( 64'hFFFFFFFF485A0000 ))
  \carry<22>  (
    .ADR4(\bp[22] ),
    .ADR1(\gpgs1_20/G1 ),
    .ADR0(b_21_IBUF_1058),
    .ADR2(a_21_IBUF_1057),
    .ADR3(N10_0),
    .ADR5(\st0g[21] ),
    .O(\carry[22] )
  );
  X_BUF   \sum_21_OBUF/sum_21_OBUF_DMUX_Delay  (
    .I(N8),
    .O(N8_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y122" ),
    .INIT ( 64'hF00F0FF0F00F0FF0 ))
  \sb_21/Mxor_Si_xo<0>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(a_21_IBUF_1057),
    .ADR4(b_21_IBUF_1058),
    .ADR3(\carry[20] ),
    .ADR5(1'b1),
    .O(sum_21_OBUF_1056)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y122" ),
    .INIT ( 32'hF0FF0FFF ))
  \carry<24>_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(a_21_IBUF_1057),
    .ADR4(b_21_IBUF_1058),
    .ADR3(\carry[20] ),
    .O(N8)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y122" ),
    .INIT ( 64'hFFFFFFFFCC80CC00 ))
  \carry<20>3  (
    .ADR1(\carry<20>1_0 ),
    .ADR3(\gpgs1_18/G2_0 ),
    .ADR0(\carry<20>2_1044 ),
    .ADR4(\gpgs0_16/P1_1001 ),
    .ADR2(\sb_18/Mxor_Si_xo<0>1_957 ),
    .ADR5(\gpgs1_20/G1 ),
    .O(\carry[20] )
  );
  X_BUF   \gpgs1_21/G1/gpgs1_21/G1_DMUX_Delay  (
    .I(\st0p<20>_pack_6 ),
    .O(\st0p[20] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y123" ),
    .INIT ( 64'hEEAA8800EEAA8800 ))
  \gpgs1_21/G11  (
    .ADR2(1'b1),
    .ADR4(a_21_IBUF_1057),
    .ADR0(b_21_IBUF_1058),
    .ADR3(a_20_IBUF_964),
    .ADR1(b_20_IBUF_965),
    .ADR5(1'b1),
    .O(\gpgs1_21/G1 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y123" ),
    .INIT ( 32'h11442288 ))
  \gpgs0_20/P1  (
    .ADR2(1'b1),
    .ADR4(a_21_IBUF_1057),
    .ADR0(b_21_IBUF_1058),
    .ADR3(a_20_IBUF_964),
    .ADR1(b_20_IBUF_965),
    .O(\st0p<20>_pack_6 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y123" ),
    .INIT ( 64'h333336663333CCCC ))
  \sb_22/Mxor_Si_xo<0>1  (
    .ADR1(\bp[22] ),
    .ADR4(\gpgs1_21/G1 ),
    .ADR0(\gpgs1_19/G3 ),
    .ADR3(\carry[17] ),
    .ADR2(\st0p<18>_0 ),
    .ADR5(\st0p[20] ),
    .O(sum_22_OBUF_1076)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y123" ),
    .INIT ( 64'hFFAAEAAA00000000 ))
  \carry<25>3_SW0  (
    .ADR5(\bp[23] ),
    .ADR3(\st0p[20] ),
    .ADR4(\gpgs1_19/G3 ),
    .ADR1(\carry[17] ),
    .ADR2(\st0p<18>_0 ),
    .ADR0(\gpgs1_21/G1 ),
    .O(N34)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y126" ),
    .INIT ( 64'hFFFFFFFF0C08C080 ))
  \carry<23>2  (
    .ADR1(\bp[23] ),
    .ADR4(a_22_IBUF_1060),
    .ADR2(b_22_IBUF_1061),
    .ADR3(\gpgs1_21/G1 ),
    .ADR0(\carry<23>1_1063 ),
    .ADR5(\st0g<22>_0 ),
    .O(\carry[23] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y126" ),
    .INIT ( 64'h3230C8C03030C0C0 ))
  \carry<27>1  (
    .ADR4(a_26_IBUF_929),
    .ADR1(b_26_IBUF_930),
    .ADR3(\carry[23] ),
    .ADR0(\bp[24] ),
    .ADR5(\bp[25] ),
    .ADR2(\st0g[24] ),
    .O(\carry<27>1_994 )
  );
  X_BUF   \N32/N32_BMUX_Delay  (
    .I(sum_25_OBUF_685),
    .O(sum_25_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X53Y126" ),
    .INIT ( 64'h1428000014280000 ))
  \cc_28/carry4_SW0  (
    .ADR4(\carry[24] ),
    .ADR3(b_26_IBUF_930),
    .ADR0(a_26_IBUF_929),
    .ADR1(b_25_IBUF_1047),
    .ADR2(a_25_IBUF_1048),
    .ADR5(1'b1),
    .O(N32)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X53Y126" ),
    .INIT ( 32'hC3C33C3C ))
  \sb_25/Mxor_Si_xo<0>1  (
    .ADR4(\carry[24] ),
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR1(b_25_IBUF_1047),
    .ADR2(a_25_IBUF_1048),
    .O(sum_25_OBUF_685)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X53Y126" ),
    .INIT ( 64'hFFFFFFFFF0200000 ))
  \carry<24>  (
    .ADR2(\bp[24] ),
    .ADR4(\bp[23] ),
    .ADR3(\st0g[21] ),
    .ADR0(\bp[22] ),
    .ADR1(N8_0),
    .ADR5(\st0g<23>_0 ),
    .O(\carry[24] )
  );
  X_BUF   \bp<24>/bp<24>_AMUX_Delay  (
    .I(\st0g[23] ),
    .O(\st0g<23>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X53Y127" ),
    .INIT ( 64'h3333CCCC3333CCCC ))
  \bpg_1/Mxor_bp_24_xo<0>1  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(a_24_IBUF_1067),
    .ADR4(b_24_IBUF_1068),
    .ADR5(1'b1),
    .O(\bp[24] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X53Y127" ),
    .INIT ( 32'hEECC8800 ))
  \gpgs0_23/G1  (
    .ADR2(1'b1),
    .ADR0(a_23_IBUF_1017),
    .ADR3(b_23_IBUF_1018),
    .ADR1(a_24_IBUF_1067),
    .ADR4(b_24_IBUF_1068),
    .O(\st0g[23] )
  );
  X_BUF   \bp<23>/bp<23>_AMUX_Delay  (
    .I(\st0g[22] ),
    .O(\st0g<22>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X53Y128" ),
    .INIT ( 64'h3C3C3C3C3C3C3C3C ))
  \bpg_1/Mxor_bp_23_xo<0>1  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR1(a_23_IBUF_1017),
    .ADR2(b_23_IBUF_1018),
    .ADR5(1'b1),
    .O(\bp[23] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X53Y128" ),
    .INIT ( 32'hE8E8C0C0 ))
  \gpgs0_22/G1  (
    .ADR3(1'b1),
    .ADR0(a_22_IBUF_1060),
    .ADR4(b_22_IBUF_1061),
    .ADR1(a_23_IBUF_1017),
    .ADR2(b_23_IBUF_1018),
    .O(\st0g[22] )
  );
  X_BUF   \bp<25>/bp<25>_CMUX_Delay  (
    .I(\st0g<24>_pack_2 ),
    .O(\st0g[24] )
  );
  X_BUF   \bp<25>/bp<25>_BMUX_Delay  (
    .I(sum_26_OBUF_726),
    .O(sum_26_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y126" ),
    .INIT ( 64'h0F0FF0F00F0FF0F0 ))
  \bpg_1/Mxor_bp_25_xo<0>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(a_25_IBUF_1048),
    .ADR4(b_25_IBUF_1047),
    .ADR5(1'b1),
    .O(\bp[25] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X52Y126" ),
    .INIT ( 32'hF8F88080 ))
  \gpgs0_24/G1  (
    .ADR3(1'b1),
    .ADR1(a_24_IBUF_1067),
    .ADR0(b_24_IBUF_1068),
    .ADR2(a_25_IBUF_1048),
    .ADR4(b_25_IBUF_1047),
    .O(\st0g<24>_pack_2 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y126" ),
    .INIT ( 64'hFCE8E8C0FCE8E8C0 ))
  \cc_29/carry_SW0  (
    .ADR2(a_27_IBUF_927),
    .ADR1(b_27_IBUF_928),
    .ADR0(a_26_IBUF_929),
    .ADR3(b_26_IBUF_930),
    .ADR4(\carry[25] ),
    .ADR5(1'b1),
    .O(N22)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X52Y126" ),
    .INIT ( 32'hAA5555AA ))
  \sb_26/Mxor_Si_xo<0>1  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(a_26_IBUF_929),
    .ADR3(b_26_IBUF_930),
    .ADR4(\carry[25] ),
    .O(sum_26_OBUF_726)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y126" ),
    .INIT ( 64'hFFFFF080FFFF0000 ))
  \carry<25>3  (
    .ADR5(\bp[25] ),
    .ADR2(\bp[24] ),
    .ADR0(\bp[22] ),
    .ADR1(N34),
    .ADR3(\st0g<22>_0 ),
    .ADR4(\st0g[24] ),
    .O(\carry[25] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y121" ),
    .INIT ( 64'h9999999966666666 ))
  \sb_28/Mxor_Si_xo<0>1  (
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(a_28_IBUF_952),
    .ADR5(b_28_IBUF_951),
    .ADR0(\carry[27] ),
    .O(sum_28_OBUF_1034)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y121" ),
    .INIT ( 64'hAAAA55555555AAAA ))
  \sb_31/Mxor_Si_xo<0>1  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR0(a_31_IBUF_992),
    .ADR5(b_31_IBUF_990),
    .ADR4(\carry[30] ),
    .O(sum_31_OBUF_1039)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y121" ),
    .INIT ( 64'hFFAAFFAAAA00BE28 ))
  \cc_30/carry  (
    .ADR3(a_30_IBUF_954),
    .ADR4(N26_0),
    .ADR2(b_29_IBUF_950),
    .ADR1(a_29_IBUF_949),
    .ADR5(\cc_29/carry2 ),
    .ADR0(b_30_IBUF_955),
    .O(\carry[30] )
  );
  X_BUF   \sb_20/Mxor_Si_xo<0>1/sb_20/Mxor_Si_xo<0>1_BMUX_Delay  (
    .I(sum_29_OBUF_751),
    .O(sum_29_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y122" ),
    .INIT ( 64'h6666666666666666 ))
  \sb_20/Mxor_Si_xo<0>11  (
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(a_20_IBUF_964),
    .ADR0(b_20_IBUF_965),
    .ADR5(1'b1),
    .O(\sb_20/Mxor_Si_xo<0>1_943 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X60Y122" ),
    .INIT ( 32'hF00F0FF0 ))
  \sb_29/Mxor_Si_xo<0>1  (
    .ADR3(a_29_IBUF_949),
    .ADR2(b_29_IBUF_950),
    .ADR4(\carry[28] ),
    .ADR0(1'b1),
    .ADR1(1'b1),
    .O(sum_29_OBUF_751)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y122" ),
    .INIT ( 64'hFFFEFE00FFA8A800 ))
  \cc_28/carry4  (
    .ADR4(a_28_IBUF_952),
    .ADR5(a_27_IBUF_927),
    .ADR0(b_27_IBUF_928),
    .ADR1(\carry<26>1 ),
    .ADR2(N32),
    .ADR3(b_28_IBUF_951),
    .O(\carry[28] )
  );
  X_BUF   \carry<26>1/carry<26>1_AMUX_Delay  (
    .I(\carry<26>2_766 ),
    .O(\carry<26>2_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y126" ),
    .INIT ( 64'hECEC8080ECEC8080 ))
  \cc_28/carry3  (
    .ADR3(1'b1),
    .ADR1(a_26_IBUF_929),
    .ADR4(b_26_IBUF_930),
    .ADR0(a_25_IBUF_1048),
    .ADR2(b_25_IBUF_1047),
    .ADR5(1'b1),
    .O(\carry<26>1 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X60Y126" ),
    .INIT ( 32'h12124848 ))
  \carry<26>2  (
    .ADR3(1'b1),
    .ADR1(a_26_IBUF_929),
    .ADR4(b_26_IBUF_930),
    .ADR0(a_25_IBUF_1048),
    .ADR2(b_25_IBUF_1047),
    .O(\carry<26>2_766 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y121" ),
    .INIT ( 64'h9999666699996666 ))
  \sb_30/Mxor_Si_xo<0>1  (
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(a_30_IBUF_954),
    .ADR0(b_30_IBUF_955),
    .ADR4(\carry[29] ),
    .O(sum_30_OBUF_953)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y121" ),
    .INIT ( 64'hFEEAA880FEEAA880 ))
  \cc_29/carry  (
    .ADR5(1'b1),
    .ADR0(a_29_IBUF_949),
    .ADR4(b_29_IBUF_950),
    .ADR1(N22),
    .ADR3(b_28_IBUF_951),
    .ADR2(a_28_IBUF_952),
    .O(\carry[29] )
  );
  X_BUF   \cc_29/carry2/cc_29/carry2_CMUX_Delay  (
    .I(N24_pack_2),
    .O(N24)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y122" ),
    .INIT ( 64'hEC80EC80EC80EC80 ))
  \cc_29/carry21  (
    .ADR4(1'b1),
    .ADR1(a_29_IBUF_949),
    .ADR3(b_29_IBUF_950),
    .ADR0(a_28_IBUF_952),
    .ADR2(b_28_IBUF_951),
    .ADR5(1'b1),
    .O(\cc_29/carry2 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X61Y122" ),
    .INIT ( 32'hEDB7FFFF ))
  \cc_31/carry_SW0  (
    .ADR4(\carry[27] ),
    .ADR1(a_29_IBUF_949),
    .ADR3(b_29_IBUF_950),
    .ADR0(a_28_IBUF_952),
    .ADR2(b_28_IBUF_951),
    .O(N24_pack_2)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y122" ),
    .INIT ( 64'hFCE8FCC0FCE8FCC0 ))
  \carry<27>2  (
    .ADR5(1'b1),
    .ADR1(a_27_IBUF_927),
    .ADR2(b_27_IBUF_928),
    .ADR0(a_26_IBUF_929),
    .ADR4(b_26_IBUF_930),
    .ADR3(\carry<27>1_994 ),
    .O(\carry[27] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y122" ),
    .INIT ( 64'hFEA8FEA8EA80FEA8 ))
  \cc_31/carry  (
    .ADR3(b_31_IBUF_990),
    .ADR1(a_30_IBUF_954),
    .ADR2(b_30_IBUF_955),
    .ADR4(N24),
    .ADR5(\cc_29/carry2 ),
    .ADR0(a_31_IBUF_992),
    .O(cout_OBUF_989)
  );
  X_BUF   \sum_27_OBUF/sum_27_OBUF_BMUX_Delay  (
    .I(N26),
    .O(N26_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y126" ),
    .INIT ( 64'h9999666699996666 ))
  \sb_27/Mxor_Si_xo<0>1  (
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(a_27_IBUF_927),
    .ADR1(b_27_IBUF_928),
    .ADR4(\carry[26] ),
    .ADR5(1'b1),
    .O(sum_27_OBUF_987)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X61Y126" ),
    .INIT ( 32'hF11FF77F ))
  \cc_30/carry_SW0  (
    .ADR2(b_28_IBUF_951),
    .ADR3(a_28_IBUF_952),
    .ADR0(a_27_IBUF_927),
    .ADR1(b_27_IBUF_928),
    .ADR4(\carry[26] ),
    .O(N26)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y126" ),
    .INIT ( 64'hFFF0FFF0F8F0F0F0 ))
  \carry<26>3  (
    .ADR3(\carry<26>2_0 ),
    .ADR5(\st0g<23>_0 ),
    .ADR1(\carry[22] ),
    .ADR4(\bp[23] ),
    .ADR0(\bp[24] ),
    .ADR2(\carry<26>1 ),
    .O(\carry[26] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X66Y128" ),
    .INIT ( 64'h9966996699669966 ))
  \sb_23/Mxor_Si_xo<0>1  (
    .ADR4(1'b1),
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR0(a_23_IBUF_1017),
    .ADR1(b_23_IBUF_1018),
    .ADR3(\carry[22] ),
    .O(sum_23_OBUF_1016)
  );
  X_BUF   \NlwBufferBlock_sum_10_OBUF/I  (
    .I(sum_10_OBUF_996),
    .O(\NlwBufferSignal_sum_10_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_11_OBUF/I  (
    .I(sum_11_OBUF_1036),
    .O(\NlwBufferSignal_sum_11_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_12_OBUF/I  (
    .I(sum_12_OBUF_1040),
    .O(\NlwBufferSignal_sum_12_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_20_OBUF/I  (
    .I(sum_20_OBUF_942),
    .O(\NlwBufferSignal_sum_20_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_13_OBUF/I  (
    .I(sum_13_OBUF_1031),
    .O(\NlwBufferSignal_sum_13_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_21_OBUF/I  (
    .I(sum_21_OBUF_1056),
    .O(\NlwBufferSignal_sum_21_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_0_OBUF/I  (
    .I(sum_0_OBUF_995),
    .O(\NlwBufferSignal_sum_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_14_OBUF/I  (
    .I(sum_14_OBUF_1080),
    .O(\NlwBufferSignal_sum_14_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_22_OBUF/I  (
    .I(sum_22_OBUF_1076),
    .O(\NlwBufferSignal_sum_22_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_30_OBUF/I  (
    .I(sum_30_OBUF_953),
    .O(\NlwBufferSignal_sum_30_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_1_OBUF/I  (
    .I(sum_1_OBUF_0),
    .O(\NlwBufferSignal_sum_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_15_OBUF/I  (
    .I(sum_15_OBUF_1019),
    .O(\NlwBufferSignal_sum_15_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_23_OBUF/I  (
    .I(sum_23_OBUF_1016),
    .O(\NlwBufferSignal_sum_23_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_31_OBUF/I  (
    .I(sum_31_OBUF_1039),
    .O(\NlwBufferSignal_sum_31_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_2_OBUF/I  (
    .I(sum_2_OBUF_1084),
    .O(\NlwBufferSignal_sum_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_16_OBUF/I  (
    .I(sum_16_OBUF_1052),
    .O(\NlwBufferSignal_sum_16_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_24_OBUF/I  (
    .I(sum_24_OBUF_0),
    .O(\NlwBufferSignal_sum_24_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_3_OBUF/I  (
    .I(sum_3_OBUF_1030),
    .O(\NlwBufferSignal_sum_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_17_OBUF/I  (
    .I(sum_17_OBUF_1000),
    .O(\NlwBufferSignal_sum_17_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_25_OBUF/I  (
    .I(sum_25_OBUF_0),
    .O(\NlwBufferSignal_sum_25_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_4_OBUF/I  (
    .I(sum_4_OBUF_0),
    .O(\NlwBufferSignal_sum_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_18_OBUF/I  (
    .I(sum_18_OBUF_0),
    .O(\NlwBufferSignal_sum_18_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_26_OBUF/I  (
    .I(sum_26_OBUF_0),
    .O(\NlwBufferSignal_sum_26_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_5_OBUF/I  (
    .I(sum_5_OBUF_1013),
    .O(\NlwBufferSignal_sum_5_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_19_OBUF/I  (
    .I(sum_19_OBUF_1077),
    .O(\NlwBufferSignal_sum_19_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_27_OBUF/I  (
    .I(sum_27_OBUF_987),
    .O(\NlwBufferSignal_sum_27_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_6_OBUF/I  (
    .I(sum_6_OBUF_1051),
    .O(\NlwBufferSignal_sum_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_28_OBUF/I  (
    .I(sum_28_OBUF_1034),
    .O(\NlwBufferSignal_sum_28_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_7_OBUF/I  (
    .I(sum_7_OBUF_0),
    .O(\NlwBufferSignal_sum_7_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_29_OBUF/I  (
    .I(sum_29_OBUF_0),
    .O(\NlwBufferSignal_sum_29_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cout_OBUF/I  (
    .I(cout_OBUF_989),
    .O(\NlwBufferSignal_cout_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_8_OBUF/I  (
    .I(sum_8_OBUF_1009),
    .O(\NlwBufferSignal_sum_8_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_9_OBUF/I  (
    .I(sum_9_OBUF_938),
    .O(\NlwBufferSignal_sum_9_OBUF/I )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

