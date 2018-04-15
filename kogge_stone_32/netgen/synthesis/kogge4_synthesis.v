////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: kogge4_synthesis.v
// /___/   /\     Timestamp: Sat Apr 14 13:41:57 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim kogge4.ngc kogge4_synthesis.v 
// Device	: xc7a100t-3-csg324
// Input file	: kogge4.ngc
// Output file	: /home/rcetin/workspace/ISE_workspace/kogge_stone_32/netgen/synthesis/kogge4_synthesis.v
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
  wire a_31_IBUF_0;
  wire a_30_IBUF_1;
  wire a_29_IBUF_2;
  wire a_28_IBUF_3;
  wire a_27_IBUF_4;
  wire a_26_IBUF_5;
  wire a_25_IBUF_6;
  wire a_24_IBUF_7;
  wire a_23_IBUF_8;
  wire a_22_IBUF_9;
  wire a_21_IBUF_10;
  wire a_20_IBUF_11;
  wire a_19_IBUF_12;
  wire a_18_IBUF_13;
  wire a_17_IBUF_14;
  wire a_16_IBUF_15;
  wire a_15_IBUF_16;
  wire a_14_IBUF_17;
  wire a_13_IBUF_18;
  wire a_12_IBUF_19;
  wire a_11_IBUF_20;
  wire a_10_IBUF_21;
  wire a_9_IBUF_22;
  wire a_8_IBUF_23;
  wire a_7_IBUF_24;
  wire a_6_IBUF_25;
  wire a_5_IBUF_26;
  wire a_4_IBUF_27;
  wire a_3_IBUF_28;
  wire a_2_IBUF_29;
  wire a_1_IBUF_30;
  wire a_0_IBUF_31;
  wire b_31_IBUF_32;
  wire b_30_IBUF_33;
  wire b_29_IBUF_34;
  wire b_28_IBUF_35;
  wire b_27_IBUF_36;
  wire b_26_IBUF_37;
  wire b_25_IBUF_38;
  wire b_24_IBUF_39;
  wire b_23_IBUF_40;
  wire b_22_IBUF_41;
  wire b_21_IBUF_42;
  wire b_20_IBUF_43;
  wire b_19_IBUF_44;
  wire b_18_IBUF_45;
  wire b_17_IBUF_46;
  wire b_16_IBUF_47;
  wire b_15_IBUF_48;
  wire b_14_IBUF_49;
  wire b_13_IBUF_50;
  wire b_12_IBUF_51;
  wire b_11_IBUF_52;
  wire b_10_IBUF_53;
  wire b_9_IBUF_54;
  wire b_8_IBUF_55;
  wire b_7_IBUF_56;
  wire b_6_IBUF_57;
  wire b_5_IBUF_58;
  wire b_4_IBUF_59;
  wire b_3_IBUF_60;
  wire b_2_IBUF_61;
  wire b_1_IBUF_62;
  wire b_0_IBUF_63;
  wire cin_IBUF_64;
  wire \bp[1] ;
  wire \bp[22] ;
  wire \bp[23] ;
  wire \bp[24] ;
  wire \bp[25] ;
  wire \carry[1] ;
  wire \carry[2] ;
  wire \carry[3] ;
  wire \carry[4] ;
  wire \carry[5] ;
  wire \carry[6] ;
  wire \carry[7] ;
  wire \carry[8] ;
  wire \carry[9] ;
  wire \carry[10] ;
  wire \carry[11] ;
  wire \carry[12] ;
  wire \carry[13] ;
  wire \carry[15] ;
  wire \carry[17] ;
  wire \carry[18] ;
  wire \carry[20] ;
  wire \carry[22] ;
  wire \carry[23] ;
  wire \carry[24] ;
  wire \carry[25] ;
  wire \carry[26] ;
  wire \carry[27] ;
  wire \carry[28] ;
  wire \carry[29] ;
  wire \carry[30] ;
  wire cout_OBUF_96;
  wire sum_0_OBUF_97;
  wire sum_1_OBUF_98;
  wire sum_2_OBUF_99;
  wire sum_3_OBUF_100;
  wire sum_4_OBUF_101;
  wire sum_5_OBUF_102;
  wire sum_6_OBUF_103;
  wire sum_7_OBUF_104;
  wire sum_8_OBUF_105;
  wire sum_9_OBUF_106;
  wire sum_10_OBUF_107;
  wire sum_11_OBUF_108;
  wire sum_12_OBUF_109;
  wire sum_13_OBUF_110;
  wire sum_14_OBUF_111;
  wire sum_15_OBUF_112;
  wire sum_16_OBUF_113;
  wire sum_17_OBUF_114;
  wire sum_18_OBUF_115;
  wire sum_19_OBUF_116;
  wire sum_20_OBUF_117;
  wire sum_21_OBUF_118;
  wire sum_22_OBUF_119;
  wire sum_23_OBUF_120;
  wire sum_24_OBUF_121;
  wire sum_25_OBUF_122;
  wire sum_26_OBUF_123;
  wire sum_27_OBUF_124;
  wire sum_28_OBUF_125;
  wire sum_29_OBUF_126;
  wire sum_30_OBUF_127;
  wire sum_31_OBUF_128;
  wire \st0g[6] ;
  wire \st0g[10] ;
  wire \st0p[11] ;
  wire \st0p[13] ;
  wire \st0p[15] ;
  wire \st0p[16] ;
  wire \st0p[18] ;
  wire \st0p[20] ;
  wire \st0g[21] ;
  wire \st0g[22] ;
  wire \st0g[23] ;
  wire \st0g[24] ;
  wire \gpgs0_14/P1 ;
  wire \gpgs0_16/P1_142 ;
  wire \sb_4/Mxor_Si_xo<0>1_143 ;
  wire \sb_18/Mxor_Si_xo<0>1_144 ;
  wire \sb_20/Mxor_Si_xo<0>1_145 ;
  wire \gpgs1_21/G1 ;
  wire \gpgs1_4/G1 ;
  wire \gpgs1_20/G1 ;
  wire \gpgs1_18/G2 ;
  wire \gpgs1_14/G2 ;
  wire \gpgs1_16/G3 ;
  wire \gpgs1_17/G1 ;
  wire \gpgs1_19/G3 ;
  wire \gpgs1_12/G2 ;
  wire \gpgs1_2/G2 ;
  wire \cc_29/carry2 ;
  wire \carry<18>1_157 ;
  wire \carry<23>1_158 ;
  wire \carry<26>1 ;
  wire \carry<26>2_160 ;
  wire N2;
  wire \cc_5/carry ;
  wire N4;
  wire \cc_3/carry2 ;
  wire \carry<15>1_165 ;
  wire \carry<20>1_166 ;
  wire \carry<20>2_167 ;
  wire N8;
  wire N10;
  wire N12;
  wire \carry<27>1_171 ;
  wire \carry<8>1_172 ;
  wire N14;
  wire N16;
  wire N18;
  wire N22;
  wire N24;
  wire N26;
  wire N28;
  wire N30;
  wire N32;
  wire N34;
  wire N36;
  wire N38;
  wire N40;
  LUT2 #(
    .INIT ( 4'h6 ))
  \bpg_1/Mxor_bp_1_xo<0>1  (
    .I0(a_1_IBUF_30),
    .I1(b_1_IBUF_62),
    .O(\bp[1] )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \bpg_1/Mxor_bp_22_xo<0>1  (
    .I0(a_22_IBUF_9),
    .I1(b_22_IBUF_41),
    .O(\bp[22] )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \bpg_1/Mxor_bp_23_xo<0>1  (
    .I0(a_23_IBUF_8),
    .I1(b_23_IBUF_40),
    .O(\bp[23] )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \bpg_1/Mxor_bp_24_xo<0>1  (
    .I0(a_24_IBUF_7),
    .I1(b_24_IBUF_39),
    .O(\bp[24] )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \bpg_1/Mxor_bp_25_xo<0>1  (
    .I0(a_25_IBUF_6),
    .I1(b_25_IBUF_38),
    .O(\bp[25] )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \gpgs0_14/P11  (
    .I0(a_15_IBUF_16),
    .I1(b_15_IBUF_48),
    .O(\gpgs0_14/P1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \gpgs0_16/P11  (
    .I0(a_17_IBUF_14),
    .I1(b_17_IBUF_46),
    .O(\gpgs0_16/P1_142 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \sb_4/Mxor_Si_xo<0>11  (
    .I0(a_4_IBUF_27),
    .I1(b_4_IBUF_59),
    .O(\sb_4/Mxor_Si_xo<0>1_143 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \sb_18/Mxor_Si_xo<0>11  (
    .I0(a_18_IBUF_13),
    .I1(b_18_IBUF_45),
    .O(\sb_18/Mxor_Si_xo<0>1_144 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \sb_20/Mxor_Si_xo<0>11  (
    .I0(a_20_IBUF_11),
    .I1(b_20_IBUF_43),
    .O(\sb_20/Mxor_Si_xo<0>1_145 )
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \gpgs0_21/G1  (
    .I0(a_22_IBUF_9),
    .I1(b_22_IBUF_41),
    .I2(a_21_IBUF_10),
    .I3(b_21_IBUF_42),
    .O(\st0g[21] )
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \gpgs1_21/G11  (
    .I0(a_21_IBUF_10),
    .I1(b_21_IBUF_42),
    .I2(a_20_IBUF_11),
    .I3(b_20_IBUF_43),
    .O(\gpgs1_21/G1 )
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \gpgs1_4/G11  (
    .I0(a_4_IBUF_27),
    .I1(b_4_IBUF_59),
    .I2(a_3_IBUF_28),
    .I3(b_3_IBUF_60),
    .O(\gpgs1_4/G1 )
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \gpgs1_20/G11  (
    .I0(a_20_IBUF_11),
    .I1(b_20_IBUF_43),
    .I2(a_19_IBUF_12),
    .I3(b_19_IBUF_44),
    .O(\gpgs1_20/G1 )
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \gpgs1_18/G21  (
    .I0(a_18_IBUF_13),
    .I1(b_18_IBUF_45),
    .I2(a_17_IBUF_14),
    .I3(b_17_IBUF_46),
    .O(\gpgs1_18/G2 )
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \gpgs1_14/G21  (
    .I0(a_14_IBUF_17),
    .I1(b_14_IBUF_49),
    .I2(a_13_IBUF_18),
    .I3(b_13_IBUF_50),
    .O(\gpgs1_14/G2 )
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \gpgs1_16/G31  (
    .I0(a_16_IBUF_15),
    .I1(b_16_IBUF_47),
    .I2(a_15_IBUF_16),
    .I3(b_15_IBUF_48),
    .O(\gpgs1_16/G3 )
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \gpgs1_17/G11  (
    .I0(a_17_IBUF_14),
    .I1(b_17_IBUF_46),
    .I2(a_16_IBUF_15),
    .I3(b_16_IBUF_47),
    .O(\gpgs1_17/G1 )
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \gpgs1_19/G31  (
    .I0(a_19_IBUF_12),
    .I1(b_19_IBUF_44),
    .I2(a_18_IBUF_13),
    .I3(b_18_IBUF_45),
    .O(\gpgs1_19/G3 )
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \gpgs0_24/G1  (
    .I0(a_25_IBUF_6),
    .I1(b_25_IBUF_38),
    .I2(a_24_IBUF_7),
    .I3(b_24_IBUF_39),
    .O(\st0g[24] )
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \gpgs0_23/G1  (
    .I0(a_24_IBUF_7),
    .I1(b_24_IBUF_39),
    .I2(a_23_IBUF_8),
    .I3(b_23_IBUF_40),
    .O(\st0g[23] )
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \gpgs0_22/G1  (
    .I0(a_23_IBUF_8),
    .I1(b_23_IBUF_40),
    .I2(a_22_IBUF_9),
    .I3(b_22_IBUF_41),
    .O(\st0g[22] )
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \gpgs0_10/G1  (
    .I0(a_11_IBUF_20),
    .I1(b_11_IBUF_52),
    .I2(a_10_IBUF_21),
    .I3(b_10_IBUF_53),
    .O(\st0g[10] )
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \gpgs0_6/G1  (
    .I0(a_7_IBUF_24),
    .I1(b_7_IBUF_56),
    .I2(a_6_IBUF_25),
    .I3(b_6_IBUF_57),
    .O(\st0g[6] )
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \gpgs1_12/G21  (
    .I0(a_12_IBUF_19),
    .I1(b_12_IBUF_51),
    .I2(a_11_IBUF_20),
    .I3(b_11_IBUF_52),
    .O(\gpgs1_12/G2 )
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \gpgs1_2/G21  (
    .I0(a_2_IBUF_29),
    .I1(b_2_IBUF_61),
    .I2(a_1_IBUF_30),
    .I3(b_1_IBUF_62),
    .O(\gpgs1_2/G2 )
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \cc_1/carry1  (
    .I0(a_1_IBUF_30),
    .I1(b_1_IBUF_62),
    .I2(b_0_IBUF_63),
    .I3(cin_IBUF_64),
    .I4(a_0_IBUF_31),
    .O(\carry[1] )
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \cc_29/carry21  (
    .I0(a_29_IBUF_2),
    .I1(b_29_IBUF_34),
    .I2(a_28_IBUF_3),
    .I3(b_28_IBUF_35),
    .O(\cc_29/carry2 )
  );
  LUT6 #(
    .INIT ( 64'h5556565666666666 ))
  \sb_15/Mxor_Si_xo<0>1  (
    .I0(\gpgs0_14/P1 ),
    .I1(\gpgs1_14/G2 ),
    .I2(\gpgs1_12/G2 ),
    .I3(\carry[10] ),
    .I4(\st0p[11] ),
    .I5(\st0p[13] ),
    .O(sum_15_OBUF_112)
  );
  LUT6 #(
    .INIT ( 64'h5556565666666666 ))
  \sb_17/Mxor_Si_xo<0>1  (
    .I0(\gpgs0_16/P1_142 ),
    .I1(\gpgs1_16/G3 ),
    .I2(\gpgs1_14/G2 ),
    .I3(\carry[12] ),
    .I4(\st0p[13] ),
    .I5(\st0p[15] ),
    .O(sum_17_OBUF_114)
  );
  LUT6 #(
    .INIT ( 64'h5556565666666666 ))
  \sb_22/Mxor_Si_xo<0>1  (
    .I0(\bp[22] ),
    .I1(\gpgs1_21/G1 ),
    .I2(\gpgs1_19/G3 ),
    .I3(\carry[17] ),
    .I4(\st0p[18] ),
    .I5(\st0p[20] ),
    .O(sum_22_OBUF_119)
  );
  LUT6 #(
    .INIT ( 64'h5556565666666666 ))
  \sb_20/Mxor_Si_xo<0>1  (
    .I0(\sb_20/Mxor_Si_xo<0>1_145 ),
    .I1(\gpgs1_19/G3 ),
    .I2(\gpgs1_17/G1 ),
    .I3(\carry[15] ),
    .I4(\st0p[16] ),
    .I5(\st0p[18] ),
    .O(sum_20_OBUF_117)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sb_0/Mxor_Si_xo<0>1  (
    .I0(a_0_IBUF_31),
    .I1(b_0_IBUF_63),
    .I2(cin_IBUF_64),
    .O(sum_0_OBUF_97)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sb_13/Mxor_Si_xo<0>1  (
    .I0(a_13_IBUF_18),
    .I1(b_13_IBUF_50),
    .I2(\carry[12] ),
    .O(sum_13_OBUF_110)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sb_12/Mxor_Si_xo<0>1  (
    .I0(a_12_IBUF_19),
    .I1(b_12_IBUF_51),
    .I2(\carry[11] ),
    .O(sum_12_OBUF_109)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sb_31/Mxor_Si_xo<0>1  (
    .I0(a_31_IBUF_0),
    .I1(b_31_IBUF_32),
    .I2(\carry[30] ),
    .O(sum_31_OBUF_128)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sb_2/Mxor_Si_xo<0>1  (
    .I0(a_2_IBUF_29),
    .I1(b_2_IBUF_61),
    .I2(\carry[1] ),
    .O(sum_2_OBUF_99)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sb_5/Mxor_Si_xo<0>1  (
    .I0(a_5_IBUF_26),
    .I1(b_5_IBUF_58),
    .I2(\carry[4] ),
    .O(sum_5_OBUF_102)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sb_3/Mxor_Si_xo<0>1  (
    .I0(a_3_IBUF_28),
    .I1(b_3_IBUF_60),
    .I2(\carry[2] ),
    .O(sum_3_OBUF_100)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sb_11/Mxor_Si_xo<0>1  (
    .I0(a_11_IBUF_20),
    .I1(b_11_IBUF_52),
    .I2(\carry[10] ),
    .O(sum_11_OBUF_108)
  );
  LUT4 #(
    .INIT ( 16'h0660 ))
  \gpgs0_11/P1  (
    .I0(a_12_IBUF_19),
    .I1(b_12_IBUF_51),
    .I2(a_11_IBUF_20),
    .I3(b_11_IBUF_52),
    .O(\st0p[11] )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sb_14/Mxor_Si_xo<0>1  (
    .I0(a_14_IBUF_17),
    .I1(b_14_IBUF_49),
    .I2(\carry[13] ),
    .O(sum_14_OBUF_111)
  );
  LUT4 #(
    .INIT ( 16'h0660 ))
  \gpgs0_13/P1  (
    .I0(a_14_IBUF_17),
    .I1(b_14_IBUF_49),
    .I2(a_13_IBUF_18),
    .I3(b_13_IBUF_50),
    .O(\st0p[13] )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sb_16/Mxor_Si_xo<0>1  (
    .I0(a_16_IBUF_15),
    .I1(b_16_IBUF_47),
    .I2(\carry[15] ),
    .O(sum_16_OBUF_113)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sb_19/Mxor_Si_xo<0>1  (
    .I0(a_19_IBUF_12),
    .I1(b_19_IBUF_44),
    .I2(\carry[18] ),
    .O(sum_19_OBUF_116)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sb_21/Mxor_Si_xo<0>1  (
    .I0(a_21_IBUF_10),
    .I1(b_21_IBUF_42),
    .I2(\carry[20] ),
    .O(sum_21_OBUF_118)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sb_6/Mxor_Si_xo<0>1  (
    .I0(a_6_IBUF_25),
    .I1(b_6_IBUF_57),
    .I2(\carry[5] ),
    .O(sum_6_OBUF_103)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sb_27/Mxor_Si_xo<0>1  (
    .I0(a_27_IBUF_4),
    .I1(b_27_IBUF_36),
    .I2(\carry[26] ),
    .O(sum_27_OBUF_124)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sb_30/Mxor_Si_xo<0>1  (
    .I0(a_30_IBUF_1),
    .I1(b_30_IBUF_33),
    .I2(\carry[29] ),
    .O(sum_30_OBUF_127)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sb_8/Mxor_Si_xo<0>1  (
    .I0(a_8_IBUF_23),
    .I1(b_8_IBUF_55),
    .I2(\carry[7] ),
    .O(sum_8_OBUF_105)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sb_9/Mxor_Si_xo<0>1  (
    .I0(a_9_IBUF_22),
    .I1(b_9_IBUF_54),
    .I2(\carry[8] ),
    .O(sum_9_OBUF_106)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sb_28/Mxor_Si_xo<0>1  (
    .I0(a_28_IBUF_3),
    .I1(b_28_IBUF_35),
    .I2(\carry[27] ),
    .O(sum_28_OBUF_125)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA88808080 ))
  \carry<18>1  (
    .I0(\st0p[15] ),
    .I1(\st0p[13] ),
    .I2(\gpgs1_12/G2 ),
    .I3(\carry[10] ),
    .I4(\st0p[11] ),
    .I5(\gpgs1_14/G2 ),
    .O(\carry<18>1_157 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA88808080 ))
  \carry<23>1  (
    .I0(\st0p[20] ),
    .I1(\st0p[18] ),
    .I2(\gpgs1_17/G1 ),
    .I3(\carry[15] ),
    .I4(\st0p[16] ),
    .I5(\gpgs1_19/G3 ),
    .O(\carry<23>1_158 )
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \cc_28/carry3  (
    .I0(a_26_IBUF_5),
    .I1(b_26_IBUF_37),
    .I2(a_25_IBUF_6),
    .I3(b_25_IBUF_38),
    .O(\carry<26>1 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFA8888888 ))
  \carry<26>3  (
    .I0(\carry<26>2_160 ),
    .I1(\st0g[23] ),
    .I2(\carry[22] ),
    .I3(\bp[23] ),
    .I4(\bp[24] ),
    .I5(\carry<26>1 ),
    .O(\carry[26] )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \cc_2/carry_SW0  (
    .I0(b_2_IBUF_61),
    .I1(a_2_IBUF_29),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF22202000 ))
  \cc_2/carry  (
    .I0(\bp[1] ),
    .I1(N2),
    .I2(b_0_IBUF_63),
    .I3(cin_IBUF_64),
    .I4(a_0_IBUF_31),
    .I5(\gpgs1_2/G2 ),
    .O(\carry[2] )
  );
  LUT6 #(
    .INIT ( 64'hA8A8A880A8808080 ))
  \cc_5/carry1  (
    .I0(\sb_4/Mxor_Si_xo<0>1_143 ),
    .I1(a_3_IBUF_28),
    .I2(b_3_IBUF_60),
    .I3(b_2_IBUF_61),
    .I4(\carry[1] ),
    .I5(a_2_IBUF_29),
    .O(\cc_5/carry )
  );
  LUT5 #(
    .INIT ( 32'hEEEEE888 ))
  \cc_5/carry2  (
    .I0(a_5_IBUF_26),
    .I1(b_5_IBUF_58),
    .I2(a_4_IBUF_27),
    .I3(b_4_IBUF_59),
    .I4(\cc_5/carry ),
    .O(\carry[5] )
  );
  LUT6 #(
    .INIT ( 64'hFF1717FFFFFFFFFF ))
  \cc_4/carry_SW0  (
    .I0(a_0_IBUF_31),
    .I1(cin_IBUF_64),
    .I2(b_0_IBUF_63),
    .I3(b_2_IBUF_61),
    .I4(a_2_IBUF_29),
    .I5(\bp[1] ),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF08800AA0 ))
  \cc_4/carry  (
    .I0(\sb_4/Mxor_Si_xo<0>1_143 ),
    .I1(\gpgs1_2/G2 ),
    .I2(b_3_IBUF_60),
    .I3(a_3_IBUF_28),
    .I4(N4),
    .I5(\gpgs1_4/G1 ),
    .O(\carry[4] )
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \cc_3/carry3  (
    .I0(a_1_IBUF_30),
    .I1(b_1_IBUF_62),
    .I2(a_0_IBUF_31),
    .I3(b_0_IBUF_63),
    .O(\cc_3/carry2 )
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \carry<15>1  (
    .I0(a_13_IBUF_18),
    .I1(b_13_IBUF_50),
    .I2(b_12_IBUF_51),
    .I3(\carry[11] ),
    .I4(a_12_IBUF_19),
    .O(\carry<15>1_165 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFA888 ))
  \carry<20>2  (
    .I0(\st0p[15] ),
    .I1(\gpgs1_14/G2 ),
    .I2(\carry[12] ),
    .I3(\st0p[13] ),
    .I4(\gpgs1_16/G3 ),
    .O(\carry<20>2_167 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFA8888888 ))
  \carry<20>3  (
    .I0(\carry<20>1_166 ),
    .I1(\gpgs1_18/G2 ),
    .I2(\carry<20>2_167 ),
    .I3(\gpgs0_16/P1_142 ),
    .I4(\sb_18/Mxor_Si_xo<0>1_144 ),
    .I5(\gpgs1_20/G1 ),
    .O(\carry[20] )
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \carry<24>_SW0  (
    .I0(\carry[20] ),
    .I1(a_21_IBUF_10),
    .I2(b_21_IBUF_42),
    .O(N8)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF80808880 ))
  \carry<24>  (
    .I0(\bp[24] ),
    .I1(\bp[23] ),
    .I2(\st0g[21] ),
    .I3(\bp[22] ),
    .I4(N8),
    .I5(\st0g[23] ),
    .O(\carry[24] )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF08800AA0 ))
  \carry<22>  (
    .I0(\bp[22] ),
    .I1(\gpgs1_20/G1 ),
    .I2(b_21_IBUF_42),
    .I3(a_21_IBUF_10),
    .I4(N10),
    .I5(\st0g[21] ),
    .O(\carry[22] )
  );
  LUT5 #(
    .INIT ( 32'hEEEEE888 ))
  \carry<27>2  (
    .I0(a_27_IBUF_4),
    .I1(b_27_IBUF_36),
    .I2(a_26_IBUF_5),
    .I3(b_26_IBUF_37),
    .I4(\carry<27>1_171 ),
    .O(\carry[27] )
  );
  LUT6 #(
    .INIT ( 64'hFEFEEAFEA8A880A8 ))
  \carry<9>  (
    .I0(b_9_IBUF_54),
    .I1(a_8_IBUF_23),
    .I2(b_8_IBUF_55),
    .I3(N14),
    .I4(\st0g[6] ),
    .I5(a_9_IBUF_22),
    .O(\carry[9] )
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \carry<11>_SW0  (
    .I0(a_9_IBUF_22),
    .I1(b_9_IBUF_54),
    .I2(b_8_IBUF_55),
    .I3(a_8_IBUF_23),
    .I4(\carry[7] ),
    .O(N16)
  );
  LUT6 #(
    .INIT ( 64'hFEFEEAFEA8A880A8 ))
  \cc_31/carry  (
    .I0(b_31_IBUF_32),
    .I1(a_30_IBUF_1),
    .I2(b_30_IBUF_33),
    .I3(N24),
    .I4(\cc_29/carry2 ),
    .I5(a_31_IBUF_0),
    .O(cout_OBUF_96)
  );
  LUT5 #(
    .INIT ( 32'hFF1717FF ))
  \cc_30/carry_SW0  (
    .I0(b_27_IBUF_36),
    .I1(a_27_IBUF_4),
    .I2(\carry[26] ),
    .I3(b_28_IBUF_35),
    .I4(a_28_IBUF_3),
    .O(N26)
  );
  IBUF   a_31_IBUF (
    .I(a[31]),
    .O(a_31_IBUF_0)
  );
  IBUF   a_30_IBUF (
    .I(a[30]),
    .O(a_30_IBUF_1)
  );
  IBUF   a_29_IBUF (
    .I(a[29]),
    .O(a_29_IBUF_2)
  );
  IBUF   a_28_IBUF (
    .I(a[28]),
    .O(a_28_IBUF_3)
  );
  IBUF   a_27_IBUF (
    .I(a[27]),
    .O(a_27_IBUF_4)
  );
  IBUF   a_26_IBUF (
    .I(a[26]),
    .O(a_26_IBUF_5)
  );
  IBUF   a_25_IBUF (
    .I(a[25]),
    .O(a_25_IBUF_6)
  );
  IBUF   a_24_IBUF (
    .I(a[24]),
    .O(a_24_IBUF_7)
  );
  IBUF   a_23_IBUF (
    .I(a[23]),
    .O(a_23_IBUF_8)
  );
  IBUF   a_22_IBUF (
    .I(a[22]),
    .O(a_22_IBUF_9)
  );
  IBUF   a_21_IBUF (
    .I(a[21]),
    .O(a_21_IBUF_10)
  );
  IBUF   a_20_IBUF (
    .I(a[20]),
    .O(a_20_IBUF_11)
  );
  IBUF   a_19_IBUF (
    .I(a[19]),
    .O(a_19_IBUF_12)
  );
  IBUF   a_18_IBUF (
    .I(a[18]),
    .O(a_18_IBUF_13)
  );
  IBUF   a_17_IBUF (
    .I(a[17]),
    .O(a_17_IBUF_14)
  );
  IBUF   a_16_IBUF (
    .I(a[16]),
    .O(a_16_IBUF_15)
  );
  IBUF   a_15_IBUF (
    .I(a[15]),
    .O(a_15_IBUF_16)
  );
  IBUF   a_14_IBUF (
    .I(a[14]),
    .O(a_14_IBUF_17)
  );
  IBUF   a_13_IBUF (
    .I(a[13]),
    .O(a_13_IBUF_18)
  );
  IBUF   a_12_IBUF (
    .I(a[12]),
    .O(a_12_IBUF_19)
  );
  IBUF   a_11_IBUF (
    .I(a[11]),
    .O(a_11_IBUF_20)
  );
  IBUF   a_10_IBUF (
    .I(a[10]),
    .O(a_10_IBUF_21)
  );
  IBUF   a_9_IBUF (
    .I(a[9]),
    .O(a_9_IBUF_22)
  );
  IBUF   a_8_IBUF (
    .I(a[8]),
    .O(a_8_IBUF_23)
  );
  IBUF   a_7_IBUF (
    .I(a[7]),
    .O(a_7_IBUF_24)
  );
  IBUF   a_6_IBUF (
    .I(a[6]),
    .O(a_6_IBUF_25)
  );
  IBUF   a_5_IBUF (
    .I(a[5]),
    .O(a_5_IBUF_26)
  );
  IBUF   a_4_IBUF (
    .I(a[4]),
    .O(a_4_IBUF_27)
  );
  IBUF   a_3_IBUF (
    .I(a[3]),
    .O(a_3_IBUF_28)
  );
  IBUF   a_2_IBUF (
    .I(a[2]),
    .O(a_2_IBUF_29)
  );
  IBUF   a_1_IBUF (
    .I(a[1]),
    .O(a_1_IBUF_30)
  );
  IBUF   a_0_IBUF (
    .I(a[0]),
    .O(a_0_IBUF_31)
  );
  IBUF   b_31_IBUF (
    .I(b[31]),
    .O(b_31_IBUF_32)
  );
  IBUF   b_30_IBUF (
    .I(b[30]),
    .O(b_30_IBUF_33)
  );
  IBUF   b_29_IBUF (
    .I(b[29]),
    .O(b_29_IBUF_34)
  );
  IBUF   b_28_IBUF (
    .I(b[28]),
    .O(b_28_IBUF_35)
  );
  IBUF   b_27_IBUF (
    .I(b[27]),
    .O(b_27_IBUF_36)
  );
  IBUF   b_26_IBUF (
    .I(b[26]),
    .O(b_26_IBUF_37)
  );
  IBUF   b_25_IBUF (
    .I(b[25]),
    .O(b_25_IBUF_38)
  );
  IBUF   b_24_IBUF (
    .I(b[24]),
    .O(b_24_IBUF_39)
  );
  IBUF   b_23_IBUF (
    .I(b[23]),
    .O(b_23_IBUF_40)
  );
  IBUF   b_22_IBUF (
    .I(b[22]),
    .O(b_22_IBUF_41)
  );
  IBUF   b_21_IBUF (
    .I(b[21]),
    .O(b_21_IBUF_42)
  );
  IBUF   b_20_IBUF (
    .I(b[20]),
    .O(b_20_IBUF_43)
  );
  IBUF   b_19_IBUF (
    .I(b[19]),
    .O(b_19_IBUF_44)
  );
  IBUF   b_18_IBUF (
    .I(b[18]),
    .O(b_18_IBUF_45)
  );
  IBUF   b_17_IBUF (
    .I(b[17]),
    .O(b_17_IBUF_46)
  );
  IBUF   b_16_IBUF (
    .I(b[16]),
    .O(b_16_IBUF_47)
  );
  IBUF   b_15_IBUF (
    .I(b[15]),
    .O(b_15_IBUF_48)
  );
  IBUF   b_14_IBUF (
    .I(b[14]),
    .O(b_14_IBUF_49)
  );
  IBUF   b_13_IBUF (
    .I(b[13]),
    .O(b_13_IBUF_50)
  );
  IBUF   b_12_IBUF (
    .I(b[12]),
    .O(b_12_IBUF_51)
  );
  IBUF   b_11_IBUF (
    .I(b[11]),
    .O(b_11_IBUF_52)
  );
  IBUF   b_10_IBUF (
    .I(b[10]),
    .O(b_10_IBUF_53)
  );
  IBUF   b_9_IBUF (
    .I(b[9]),
    .O(b_9_IBUF_54)
  );
  IBUF   b_8_IBUF (
    .I(b[8]),
    .O(b_8_IBUF_55)
  );
  IBUF   b_7_IBUF (
    .I(b[7]),
    .O(b_7_IBUF_56)
  );
  IBUF   b_6_IBUF (
    .I(b[6]),
    .O(b_6_IBUF_57)
  );
  IBUF   b_5_IBUF (
    .I(b[5]),
    .O(b_5_IBUF_58)
  );
  IBUF   b_4_IBUF (
    .I(b[4]),
    .O(b_4_IBUF_59)
  );
  IBUF   b_3_IBUF (
    .I(b[3]),
    .O(b_3_IBUF_60)
  );
  IBUF   b_2_IBUF (
    .I(b[2]),
    .O(b_2_IBUF_61)
  );
  IBUF   b_1_IBUF (
    .I(b[1]),
    .O(b_1_IBUF_62)
  );
  IBUF   b_0_IBUF (
    .I(b[0]),
    .O(b_0_IBUF_63)
  );
  IBUF   cin_IBUF (
    .I(cin),
    .O(cin_IBUF_64)
  );
  OBUF   sum_31_OBUF (
    .I(sum_31_OBUF_128),
    .O(sum[31])
  );
  OBUF   sum_30_OBUF (
    .I(sum_30_OBUF_127),
    .O(sum[30])
  );
  OBUF   sum_29_OBUF (
    .I(sum_29_OBUF_126),
    .O(sum[29])
  );
  OBUF   sum_28_OBUF (
    .I(sum_28_OBUF_125),
    .O(sum[28])
  );
  OBUF   sum_27_OBUF (
    .I(sum_27_OBUF_124),
    .O(sum[27])
  );
  OBUF   sum_26_OBUF (
    .I(sum_26_OBUF_123),
    .O(sum[26])
  );
  OBUF   sum_25_OBUF (
    .I(sum_25_OBUF_122),
    .O(sum[25])
  );
  OBUF   sum_24_OBUF (
    .I(sum_24_OBUF_121),
    .O(sum[24])
  );
  OBUF   sum_23_OBUF (
    .I(sum_23_OBUF_120),
    .O(sum[23])
  );
  OBUF   sum_22_OBUF (
    .I(sum_22_OBUF_119),
    .O(sum[22])
  );
  OBUF   sum_21_OBUF (
    .I(sum_21_OBUF_118),
    .O(sum[21])
  );
  OBUF   sum_20_OBUF (
    .I(sum_20_OBUF_117),
    .O(sum[20])
  );
  OBUF   sum_19_OBUF (
    .I(sum_19_OBUF_116),
    .O(sum[19])
  );
  OBUF   sum_18_OBUF (
    .I(sum_18_OBUF_115),
    .O(sum[18])
  );
  OBUF   sum_17_OBUF (
    .I(sum_17_OBUF_114),
    .O(sum[17])
  );
  OBUF   sum_16_OBUF (
    .I(sum_16_OBUF_113),
    .O(sum[16])
  );
  OBUF   sum_15_OBUF (
    .I(sum_15_OBUF_112),
    .O(sum[15])
  );
  OBUF   sum_14_OBUF (
    .I(sum_14_OBUF_111),
    .O(sum[14])
  );
  OBUF   sum_13_OBUF (
    .I(sum_13_OBUF_110),
    .O(sum[13])
  );
  OBUF   sum_12_OBUF (
    .I(sum_12_OBUF_109),
    .O(sum[12])
  );
  OBUF   sum_11_OBUF (
    .I(sum_11_OBUF_108),
    .O(sum[11])
  );
  OBUF   sum_10_OBUF (
    .I(sum_10_OBUF_107),
    .O(sum[10])
  );
  OBUF   sum_9_OBUF (
    .I(sum_9_OBUF_106),
    .O(sum[9])
  );
  OBUF   sum_8_OBUF (
    .I(sum_8_OBUF_105),
    .O(sum[8])
  );
  OBUF   sum_7_OBUF (
    .I(sum_7_OBUF_104),
    .O(sum[7])
  );
  OBUF   sum_6_OBUF (
    .I(sum_6_OBUF_103),
    .O(sum[6])
  );
  OBUF   sum_5_OBUF (
    .I(sum_5_OBUF_102),
    .O(sum[5])
  );
  OBUF   sum_4_OBUF (
    .I(sum_4_OBUF_101),
    .O(sum[4])
  );
  OBUF   sum_3_OBUF (
    .I(sum_3_OBUF_100),
    .O(sum[3])
  );
  OBUF   sum_2_OBUF (
    .I(sum_2_OBUF_99),
    .O(sum[2])
  );
  OBUF   sum_1_OBUF (
    .I(sum_1_OBUF_98),
    .O(sum[1])
  );
  OBUF   sum_0_OBUF (
    .I(sum_0_OBUF_97),
    .O(sum[0])
  );
  OBUF   cout_OBUF (
    .I(cout_OBUF_96),
    .O(cout)
  );
  LUT6 #(
    .INIT ( 64'hFEFEFEEAA8A8A880 ))
  \cc_3/carry5  (
    .I0(a_3_IBUF_28),
    .I1(a_2_IBUF_29),
    .I2(b_2_IBUF_61),
    .I3(\cc_3/carry2 ),
    .I4(N28),
    .I5(b_3_IBUF_60),
    .O(\carry[3] )
  );
  LUT6 #(
    .INIT ( 64'hFEFEFEEAA8A8A880 ))
  \carry<13>4  (
    .I0(a_13_IBUF_18),
    .I1(a_12_IBUF_19),
    .I2(b_12_IBUF_51),
    .I3(\st0g[10] ),
    .I4(N30),
    .I5(b_13_IBUF_50),
    .O(\carry[13] )
  );
  LUT5 #(
    .INIT ( 32'h00282800 ))
  \cc_28/carry4_SW0  (
    .I0(\carry[24] ),
    .I1(b_26_IBUF_37),
    .I2(a_26_IBUF_5),
    .I3(b_25_IBUF_38),
    .I4(a_25_IBUF_6),
    .O(N32)
  );
  LUT6 #(
    .INIT ( 64'hFEFEFEEAA8A8A880 ))
  \cc_28/carry4  (
    .I0(a_28_IBUF_3),
    .I1(a_27_IBUF_4),
    .I2(b_27_IBUF_36),
    .I3(\carry<26>1 ),
    .I4(N32),
    .I5(b_28_IBUF_35),
    .O(\carry[28] )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA88808080 ))
  \carry<25>3_SW0  (
    .I0(\bp[23] ),
    .I1(\st0p[20] ),
    .I2(\gpgs1_19/G3 ),
    .I3(\carry[17] ),
    .I4(\st0p[18] ),
    .I5(\gpgs1_21/G1 ),
    .O(N34)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF88888000 ))
  \carry<25>3  (
    .I0(\bp[25] ),
    .I1(\bp[24] ),
    .I2(\bp[22] ),
    .I3(N34),
    .I4(\st0g[22] ),
    .I5(\st0g[24] ),
    .O(\carry[25] )
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \carry<8>1  (
    .I0(a_6_IBUF_25),
    .I1(b_6_IBUF_57),
    .I2(a_5_IBUF_26),
    .I3(b_5_IBUF_58),
    .I4(\carry[4] ),
    .O(\carry<8>1_172 )
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \cc_7/carry_SW0  (
    .I0(a_5_IBUF_26),
    .I1(b_5_IBUF_58),
    .I2(a_4_IBUF_27),
    .I3(b_4_IBUF_59),
    .I4(\carry[3] ),
    .O(N12)
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \carry<8>2  (
    .I0(b_8_IBUF_55),
    .I1(a_8_IBUF_23),
    .I2(a_7_IBUF_24),
    .I3(b_7_IBUF_56),
    .I4(\carry<8>1_172 ),
    .O(\carry[8] )
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \carry<10>_SW0  (
    .I0(a_8_IBUF_23),
    .I1(b_8_IBUF_55),
    .I2(a_7_IBUF_24),
    .I3(b_7_IBUF_56),
    .I4(\carry[6] ),
    .O(N18)
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \cc_29/carry_SW0  (
    .I0(a_27_IBUF_4),
    .I1(b_27_IBUF_36),
    .I2(a_26_IBUF_5),
    .I3(b_26_IBUF_37),
    .I4(\carry[25] ),
    .O(N22)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sb_7/Mxor_Si_xo<0>1  (
    .I0(a_7_IBUF_24),
    .I1(b_7_IBUF_56),
    .I2(\carry[6] ),
    .O(sum_7_OBUF_104)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sb_10/Mxor_Si_xo<0>1  (
    .I0(a_10_IBUF_21),
    .I1(b_10_IBUF_53),
    .I2(\carry[9] ),
    .O(sum_10_OBUF_107)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sb_23/Mxor_Si_xo<0>1  (
    .I0(a_23_IBUF_8),
    .I1(b_23_IBUF_40),
    .I2(\carry[22] ),
    .O(sum_23_OBUF_120)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sb_24/Mxor_Si_xo<0>1  (
    .I0(a_24_IBUF_7),
    .I1(b_24_IBUF_39),
    .I2(\carry[23] ),
    .O(sum_24_OBUF_121)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sb_25/Mxor_Si_xo<0>1  (
    .I0(a_25_IBUF_6),
    .I1(b_25_IBUF_38),
    .I2(\carry[24] ),
    .O(sum_25_OBUF_122)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sb_26/Mxor_Si_xo<0>1  (
    .I0(a_26_IBUF_5),
    .I1(b_26_IBUF_37),
    .I2(\carry[25] ),
    .O(sum_26_OBUF_123)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sb_29/Mxor_Si_xo<0>1  (
    .I0(a_29_IBUF_2),
    .I1(b_29_IBUF_34),
    .I2(\carry[28] ),
    .O(sum_29_OBUF_126)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sb_4/Mxor_Si_xo<0>1  (
    .I0(\carry[3] ),
    .I1(a_4_IBUF_27),
    .I2(b_4_IBUF_59),
    .O(sum_4_OBUF_101)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sb_18/Mxor_Si_xo<0>1  (
    .I0(\carry[17] ),
    .I1(a_18_IBUF_13),
    .I2(b_18_IBUF_45),
    .O(sum_18_OBUF_115)
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \sb_1/Mxor_Si_xo<0>1  (
    .I0(a_1_IBUF_30),
    .I1(b_1_IBUF_62),
    .I2(b_0_IBUF_63),
    .I3(cin_IBUF_64),
    .I4(a_0_IBUF_31),
    .O(sum_1_OBUF_98)
  );
  LUT4 #(
    .INIT ( 16'h0660 ))
  \gpgs0_15/P1  (
    .I0(a_15_IBUF_16),
    .I1(b_15_IBUF_48),
    .I2(a_16_IBUF_15),
    .I3(b_16_IBUF_47),
    .O(\st0p[15] )
  );
  LUT4 #(
    .INIT ( 16'h0660 ))
  \gpgs0_16/P1  (
    .I0(a_17_IBUF_14),
    .I1(b_17_IBUF_46),
    .I2(a_16_IBUF_15),
    .I3(b_16_IBUF_47),
    .O(\st0p[16] )
  );
  LUT4 #(
    .INIT ( 16'h0660 ))
  \gpgs0_18/P1  (
    .I0(a_18_IBUF_13),
    .I1(b_18_IBUF_45),
    .I2(a_19_IBUF_12),
    .I3(b_19_IBUF_44),
    .O(\st0p[18] )
  );
  LUT4 #(
    .INIT ( 16'h0660 ))
  \gpgs0_20/P1  (
    .I0(a_20_IBUF_11),
    .I1(b_20_IBUF_43),
    .I2(a_21_IBUF_10),
    .I3(b_21_IBUF_42),
    .O(\st0p[20] )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF28282800 ))
  \carry<18>2  (
    .I0(\sb_18/Mxor_Si_xo<0>1_144 ),
    .I1(a_17_IBUF_14),
    .I2(b_17_IBUF_46),
    .I3(\gpgs1_16/G3 ),
    .I4(\carry<18>1_157 ),
    .I5(\gpgs1_18/G2 ),
    .O(\carry[18] )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF28282800 ))
  \carry<23>2  (
    .I0(\bp[23] ),
    .I1(a_22_IBUF_9),
    .I2(b_22_IBUF_41),
    .I3(\gpgs1_21/G1 ),
    .I4(\carry<23>1_158 ),
    .I5(\st0g[22] ),
    .O(\carry[23] )
  );
  LUT4 #(
    .INIT ( 16'h0660 ))
  \carry<20>1  (
    .I0(a_20_IBUF_11),
    .I1(b_20_IBUF_43),
    .I2(a_19_IBUF_12),
    .I3(b_19_IBUF_44),
    .O(\carry<20>1_166 )
  );
  LUT5 #(
    .INIT ( 32'hF99FFFFF ))
  \carry<22>_SW0  (
    .I0(a_19_IBUF_12),
    .I1(b_19_IBUF_44),
    .I2(a_20_IBUF_11),
    .I3(b_20_IBUF_43),
    .I4(\carry[18] ),
    .O(N10)
  );
  LUT6 #(
    .INIT ( 64'h6666666660000000 ))
  \carry<27>1  (
    .I0(a_26_IBUF_5),
    .I1(b_26_IBUF_37),
    .I2(\carry[23] ),
    .I3(\bp[24] ),
    .I4(\bp[25] ),
    .I5(\st0g[24] ),
    .O(\carry<27>1_171 )
  );
  LUT5 #(
    .INIT ( 32'hF99FFFFF ))
  \carry<9>_SW0  (
    .I0(a_6_IBUF_25),
    .I1(b_6_IBUF_57),
    .I2(a_7_IBUF_24),
    .I3(b_7_IBUF_56),
    .I4(\carry[5] ),
    .O(N14)
  );
  LUT5 #(
    .INIT ( 32'hF99FFFFF ))
  \cc_31/carry_SW0  (
    .I0(a_28_IBUF_3),
    .I1(b_28_IBUF_35),
    .I2(a_29_IBUF_2),
    .I3(b_29_IBUF_34),
    .I4(\carry[27] ),
    .O(N24)
  );
  LUT6 #(
    .INIT ( 64'hFFFFABBAAAAA0220 ))
  \cc_30/carry  (
    .I0(a_30_IBUF_1),
    .I1(N26),
    .I2(b_29_IBUF_34),
    .I3(a_29_IBUF_2),
    .I4(\cc_29/carry2 ),
    .I5(b_30_IBUF_33),
    .O(\carry[30] )
  );
  LUT5 #(
    .INIT ( 32'h00282800 ))
  \cc_6/carry3_SW0  (
    .I0(\carry[2] ),
    .I1(b_4_IBUF_59),
    .I2(a_4_IBUF_27),
    .I3(b_3_IBUF_60),
    .I4(a_3_IBUF_28),
    .O(N36)
  );
  LUT6 #(
    .INIT ( 64'hFEFEFEEAA8A8A880 ))
  \cc_6/carry3  (
    .I0(a_6_IBUF_25),
    .I1(a_5_IBUF_26),
    .I2(b_5_IBUF_58),
    .I3(\gpgs1_4/G1 ),
    .I4(N36),
    .I5(b_6_IBUF_57),
    .O(\carry[6] )
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \cc_7/carry  (
    .I0(a_7_IBUF_24),
    .I1(b_7_IBUF_56),
    .I2(N12),
    .I3(b_6_IBUF_57),
    .I4(a_6_IBUF_25),
    .O(\carry[7] )
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \cc_29/carry  (
    .I0(a_29_IBUF_2),
    .I1(b_29_IBUF_34),
    .I2(N22),
    .I3(b_28_IBUF_35),
    .I4(a_28_IBUF_3),
    .O(\carry[29] )
  );
  LUT4 #(
    .INIT ( 16'h0660 ))
  \carry<26>2  (
    .I0(a_26_IBUF_5),
    .I1(b_26_IBUF_37),
    .I2(a_25_IBUF_6),
    .I3(b_25_IBUF_38),
    .O(\carry<26>2_160 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \carry<17>_SW1  (
    .I0(a_14_IBUF_17),
    .I1(b_14_IBUF_49),
    .I2(\carry[13] ),
    .O(N38)
  );
  LUT5 #(
    .INIT ( 32'hFFFFA880 ))
  \carry<17>  (
    .I0(\st0p[16] ),
    .I1(a_15_IBUF_16),
    .I2(b_15_IBUF_48),
    .I3(N38),
    .I4(\gpgs1_17/G1 ),
    .O(\carry[17] )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \carry<12>_SW1  (
    .I0(a_9_IBUF_22),
    .I1(b_9_IBUF_54),
    .I2(\carry[8] ),
    .O(N40)
  );
  LUT5 #(
    .INIT ( 32'hFFFFA880 ))
  \carry<12>  (
    .I0(\st0p[11] ),
    .I1(a_10_IBUF_21),
    .I2(b_10_IBUF_53),
    .I3(N40),
    .I4(\gpgs1_12/G2 ),
    .O(\carry[12] )
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \carry<15>2  (
    .I0(b_15_IBUF_48),
    .I1(a_15_IBUF_16),
    .I2(\carry<15>1_165 ),
    .I3(a_14_IBUF_17),
    .I4(b_14_IBUF_49),
    .O(\carry[15] )
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \carry<11>  (
    .I0(a_11_IBUF_20),
    .I1(b_11_IBUF_52),
    .I2(a_10_IBUF_21),
    .I3(b_10_IBUF_53),
    .I4(N16),
    .O(\carry[11] )
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \carry<10>  (
    .I0(a_10_IBUF_21),
    .I1(b_10_IBUF_53),
    .I2(N18),
    .I3(b_9_IBUF_54),
    .I4(a_9_IBUF_22),
    .O(\carry[10] )
  );
  LUT5 #(
    .INIT ( 32'h00282800 ))
  \cc_3/carry5_SW0  (
    .I0(cin_IBUF_64),
    .I1(a_1_IBUF_30),
    .I2(b_1_IBUF_62),
    .I3(a_0_IBUF_31),
    .I4(b_0_IBUF_63),
    .O(N28)
  );
  LUT5 #(
    .INIT ( 32'h00282800 ))
  \carry<13>4_SW0  (
    .I0(\carry[9] ),
    .I1(a_10_IBUF_21),
    .I2(b_10_IBUF_53),
    .I3(a_11_IBUF_20),
    .I4(b_11_IBUF_52),
    .O(N30)
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

