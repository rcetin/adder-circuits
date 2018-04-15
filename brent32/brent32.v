`timescale 1ps / 1fs
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:36:34 04/14/2018 
// Design Name: 
// Module Name:    brent32 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module brent32(a, b, cin, sum, cout);
input [31:0]a;
input [31:0]b;
input cin;
output [31:0]sum;
output cout;

wire [31:0] bg, bp;	// first level propagate generate 0:0
wire [15:0] st0p, st0g;	// stage 0	
wire [7:0] st1p, st1g;	// stage 1	
wire [3:0] st2p, st2g;	// stage 2	
wire [1:0] st3p, st3g;	// stage 3	
wire st4p, st4g;	// stage 4
wire st5p, st5g;	// stage 5
wire [2:0] st6p, st6g;	// stage 6
wire [6:0] st7p, st7g;	// stage 7
wire [14:0] st8p, st8g;	// stage 8

wire [31:0] carry;

bit_propagate_generate bpg_1(.a(a),.b(b),.bp(bp),.bg(bg));

group_propagate_generate gpgs0_0(.Pi(bp[1]), .Gi(bg[1]), .Pki(bp[0]), .Gki(bg[0]), .P(st0p[0]), .G(st0g[0])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_1(.Pi(bp[3]), .Gi(bg[3]), .Pki(bp[2]), .Gki(bg[2]), .P(st0p[1]), .G(st0g[1])); // generate -> P3:2 and G3:2
group_propagate_generate gpgs0_2(.Pi(bp[5]), .Gi(bg[5]), .Pki(bp[4]), .Gki(bg[4]), .P(st0p[2]), .G(st0g[2])); // generate -> P5:4 and G5:4
group_propagate_generate gpgs0_3(.Pi(bp[7]), .Gi(bg[7]), .Pki(bp[6]), .Gki(bg[6]), .P(st0p[3]), .G(st0g[3])); // generate -> P7:6 and G7:6
group_propagate_generate gpgs0_4(.Pi(bp[9]), .Gi(bg[9]), .Pki(bp[8]), .Gki(bg[8]), .P(st0p[4]), .G(st0g[4])); // generate -> P9:8 and G9:8
group_propagate_generate gpgs0_5(.Pi(bp[11]), .Gi(bg[11]), .Pki(bp[10]), .Gki(bg[10]), .P(st0p[5]), .G(st0g[5])); // generate -> P11:10 and G11:10
group_propagate_generate gpgs0_6(.Pi(bp[13]), .Gi(bg[13]), .Pki(bp[12]), .Gki(bg[12]), .P(st0p[6]), .G(st0g[6])); // generate -> P13:12 and G13:12
group_propagate_generate gpgs0_7(.Pi(bp[15]), .Gi(bg[15]), .Pki(bp[14]), .Gki(bg[14]), .P(st0p[7]), .G(st0g[7])); // generate -> P15:14 and G15:14
group_propagate_generate gpgs0_8(.Pi(bp[17]), .Gi(bg[17]), .Pki(bp[16]), .Gki(bg[16]), .P(st0p[8]), .G(st0g[8])); // generate -> P17:16 and G17:16
group_propagate_generate gpgs0_9(.Pi(bp[19]), .Gi(bg[19]), .Pki(bp[18]), .Gki(bg[18]), .P(st0p[9]), .G(st0g[9])); // generate -> P19:18 and G19:18
group_propagate_generate gpgs0_10(.Pi(bp[21]), .Gi(bg[21]), .Pki(bp[20]), .Gki(bg[20]), .P(st0p[10]), .G(st0g[10])); // generate -> P21:20 and G21:20
group_propagate_generate gpgs0_11(.Pi(bp[23]), .Gi(bg[23]), .Pki(bp[22]), .Gki(bg[22]), .P(st0p[11]), .G(st0g[11])); // generate -> P23:22 and G23:22
group_propagate_generate gpgs0_12(.Pi(bp[25]), .Gi(bg[25]), .Pki(bp[24]), .Gki(bg[24]), .P(st0p[12]), .G(st0g[12])); // generate -> P25:24 and G25:24
group_propagate_generate gpgs0_13(.Pi(bp[27]), .Gi(bg[27]), .Pki(bp[26]), .Gki(bg[26]), .P(st0p[13]), .G(st0g[13])); // generate -> P27:26 and G27:26
group_propagate_generate gpgs0_14(.Pi(bp[29]), .Gi(bg[29]), .Pki(bp[28]), .Gki(bg[28]), .P(st0p[14]), .G(st0g[14])); // generate -> P29:28 and G29:28
group_propagate_generate gpgs0_15(.Pi(bp[31]), .Gi(bg[31]), .Pki(bp[30]), .Gki(bg[30]), .P(st0p[15]), .G(st0g[15])); // generate -> P31:30 and G31:30

group_propagate_generate gpgs1_0(.Pi(st0p[1]), .Gi(st0g[1]), .Pki(st0p[0]), .Gki(st0g[0]), .P(st1p[0]), .G(st1g[0])); // generate -> P3:0 and G3:0
group_propagate_generate gpgs1_1(.Pi(st0p[3]), .Gi(st0g[3]), .Pki(st0p[2]), .Gki(st0g[2]), .P(st1p[1]), .G(st1g[1])); // generate -> P7:4 and G7:4
group_propagate_generate gpgs1_2(.Pi(st0p[5]), .Gi(st0g[5]), .Pki(st0p[4]), .Gki(st0g[4]), .P(st1p[2]), .G(st1g[2])); // generate -> P11:8 and G11:8 
group_propagate_generate gpgs1_3(.Pi(st0p[7]), .Gi(st0g[7]), .Pki(st0p[6]), .Gki(st0g[6]), .P(st1p[3]), .G(st1g[3])); // generate -> P15:12 and G15:12
group_propagate_generate gpgs1_4(.Pi(st0p[9]), .Gi(st0g[9]), .Pki(st0p[8]), .Gki(st0g[8]), .P(st1p[4]), .G(st1g[4])); // generate -> P19:16 and G19:16
group_propagate_generate gpgs1_5(.Pi(st0p[11]), .Gi(st0g[11]), .Pki(st0p[10]), .Gki(st0g[10]), .P(st1p[5]), .G(st1g[5])); // generate -> P23:20 and G23:20
group_propagate_generate gpgs1_6(.Pi(st0p[13]), .Gi(st0g[13]), .Pki(st0p[12]), .Gki(st0g[12]), .P(st1p[6]), .G(st1g[6])); // generate -> P27:24 and G27:24
group_propagate_generate gpgs1_7(.Pi(st0p[15]), .Gi(st0g[15]), .Pki(st0p[14]), .Gki(st0g[14]), .P(st1p[7]), .G(st1g[7])); // generate -> P31:28 and G31:28

group_propagate_generate gpgs2_0(.Pi(st1p[1]), .Gi(st1g[1]), .Pki(st1p[0]), .Gki(st1g[0]), .P(st2p[0]), .G(st2g[0])); // generate -> P7:0 and G7:0
group_propagate_generate gpgs2_1(.Pi(st1p[3]), .Gi(st1g[3]), .Pki(st1p[2]), .Gki(st1g[2]), .P(st2p[1]), .G(st2g[1])); // generate -> P15:8 and G15:8 
group_propagate_generate gpgs2_2(.Pi(st1p[5]), .Gi(st1g[5]), .Pki(st1p[4]), .Gki(st1g[4]), .P(st2p[2]), .G(st2g[2])); // generate -> P23:16 and G23:16
group_propagate_generate gpgs2_3(.Pi(st1p[7]), .Gi(st1g[7]), .Pki(st1p[6]), .Gki(st1g[6]), .P(st2p[3]), .G(st2g[3])); // generate -> P31:24 and G31:24

group_propagate_generate gpgs3_0(.Pi(st2p[1]), .Gi(st2g[1]), .Pki(st2p[0]), .Gki(st2g[0]), .P(st3p[0]), .G(st3g[0])); // generate -> P15:0 and G15:0
group_propagate_generate gpgs3_1(.Pi(st2p[3]), .Gi(st2g[3]), .Pki(st2p[2]), .Gki(st2g[2]), .P(st3p[1]), .G(st3g[1])); // generate -> P31:16 and G31:16

group_propagate_generate gpgs4_0(.Pi(st3p[1]), .Gi(st3g[1]), .Pki(st3p[0]), .Gki(st3g[0]), .P(st4p), .G(st4g)); // generate -> P31:0 and G31:0

group_propagate_generate gpgs5_0(.Pi(st2p[2]), .Gi(st2g[2]), .Pki(st3p[0]), .Gki(st3g[0]), .P(st5p), .G(st5g)); // generate -> P23:0 and G23:0

group_propagate_generate gpgs6_0(.Pi(st1p[2]), .Gi(st1g[2]), .Pki(st2p[0]), .Gki(st2g[0]), .P(st6p[0]), .G(st6g[0])); // generate -> P11:0 and G11:0
group_propagate_generate gpgs6_1(.Pi(st1p[4]), .Gi(st1g[4]), .Pki(st3p[0]), .Gki(st3g[0]), .P(st6p[1]), .G(st6g[1])); // generate -> P19:0 and G19:0
group_propagate_generate gpgs6_2(.Pi(st1p[6]), .Gi(st1g[6]), .Pki(st5p), .Gki(st5g), .P(st6p[2]), .G(st6g[2])); // generate -> P27:0 and G27:0

group_propagate_generate gpgs7_0(.Pi(st0p[2]), .Gi(st0g[2]), .Pki(st1p[0]), .Gki(st1g[0]), .P(st7p[0]), .G(st7g[0])); // generate -> P5:0 and G5:0
group_propagate_generate gpgs7_1(.Pi(st0p[4]), .Gi(st0g[4]), .Pki(st2p[0]), .Gki(st2g[0]), .P(st7p[1]), .G(st7g[1])); // generate -> P9:0 and G9:0
group_propagate_generate gpgs7_2(.Pi(st0p[6]), .Gi(st0g[6]), .Pki(st6p[0]), .Gki(st6g[0]), .P(st7p[2]), .G(st7g[2])); // generate -> P13:0 and G13:0
group_propagate_generate gpgs7_3(.Pi(st0p[8]), .Gi(st0g[8]), .Pki(st3p[0]), .Gki(st3g[0]), .P(st7p[3]), .G(st7g[3])); // generate -> P17:0 and G17:0
group_propagate_generate gpgs7_4(.Pi(st0p[10]), .Gi(st0g[10]), .Pki(st6p[1]), .Gki(st6g[1]), .P(st7p[4]), .G(st7g[4])); // generate -> P21:0 and G21:0
group_propagate_generate gpgs7_5(.Pi(st0p[12]), .Gi(st0g[12]), .Pki(st5p), .Gki(st5g), .P(st7p[5]), .G(st7g[5])); // generate -> P25:0 and G25:0
group_propagate_generate gpgs7_6(.Pi(st0p[14]), .Gi(st0g[14]), .Pki(st6p[2]), .Gki(st6g[2]), .P(st7p[6]), .G(st7g[6])); // generate -> P29:0 and G29:0


group_propagate_generate gpgs8_0(.Pi(bp[2]), .Gi(bg[2]), .Pki(st0p[0]), .Gki(st0g[0]), .P(st8p[0]), .G(st8g[0])); // generate -> P2:0 and G2:0
group_propagate_generate gpgs8_1(.Pi(bp[4]), .Gi(bg[4]), .Pki(st1p[0]), .Gki(st1g[0]), .P(st8p[1]), .G(st8g[1])); // generate -> P4:0 and G4:0
group_propagate_generate gpgs8_2(.Pi(bp[6]), .Gi(bg[6]), .Pki(st7p[0]), .Gki(st7g[0]), .P(st8p[2]), .G(st8g[2])); // generate -> P6:0 and G6:0
group_propagate_generate gpgs8_3(.Pi(bp[8]), .Gi(bg[8]), .Pki(st2p[0]), .Gki(st2g[0]), .P(st8p[3]), .G(st8g[3])); // generate -> P8:0 and G8:0
group_propagate_generate gpgs8_4(.Pi(bp[10]), .Gi(bg[10]), .Pki(st7p[1]), .Gki(st7g[1]), .P(st8p[4]), .G(st8g[4])); // generate -> P10:0 and G10:0
group_propagate_generate gpgs8_5(.Pi(bp[12]), .Gi(bg[12]), .Pki(st6p[0]), .Gki(st6g[0]), .P(st8p[5]), .G(st8g[5])); // generate -> P12:0 and G12:0
group_propagate_generate gpgs8_6(.Pi(bp[14]), .Gi(bg[14]), .Pki(st7p[2]), .Gki(st7g[2]), .P(st8p[6]), .G(st8g[6])); // generate -> P14:0 and G14:0
group_propagate_generate gpgs8_7(.Pi(bp[16]), .Gi(bg[16]), .Pki(st3p[0]), .Gki(st3g[0]), .P(st8p[7]), .G(st8g[7])); // generate -> P16:0 and G16:0
group_propagate_generate gpgs8_8(.Pi(bp[18]), .Gi(bg[18]), .Pki(st7p[3]), .Gki(st7g[3]), .P(st8p[8]), .G(st8g[8])); // generate -> P18:0 and G18:0
group_propagate_generate gpgs8_9(.Pi(bp[20]), .Gi(bg[20]), .Pki(st6p[1]), .Gki(st6g[1]), .P(st8p[9]), .G(st8g[9])); // generate -> P20:0 and G20:0
group_propagate_generate gpgs8_10(.Pi(bp[22]), .Gi(bg[22]), .Pki(st7p[4]), .Gki(st7g[4]), .P(st8p[10]), .G(st8g[10])); // generate -> P22:0 and G22:0
group_propagate_generate gpgs8_11(.Pi(bp[24]), .Gi(bg[24]), .Pki(st5p), .Gki(st5g), .P(st8p[11]), .G(st8g[11])); // generate -> P24:0 and G24:0
group_propagate_generate gpgs8_12(.Pi(bp[26]), .Gi(bg[26]), .Pki(st7p[5]), .Gki(st7g[5]), .P(st8p[12]), .G(st8g[12])); // generate -> P26:0 and G26:0
group_propagate_generate gpgs8_13(.Pi(bp[28]), .Gi(bg[28]), .Pki(st6p[2]), .Gki(st6g[2]), .P(st8p[13]), .G(st8g[13])); // generate -> P28:0 and G28:0
group_propagate_generate gpgs8_14(.Pi(bp[30]), .Gi(bg[30]), .Pki(st7p[6]), .Gki(st7g[6]), .P(st8p[14]), .G(st8g[14])); // generate -> P30:0 and G30:0

calculate_carry cc_0(.Pi(bp[0]), .Gi(bg[0]), .Cin(cin), .carry(carry[0]));	// C0 = G0:0 + P0:0 . cin
calculate_carry cc_1(.Pi(st0p[0]), .Gi(st0g[0]), .Cin(cin), .carry(carry[1]));	// C1 = G1:0 + P1:0 . cin
calculate_carry cc_2(.Pi(st8p[0]), .Gi(st8g[0]), .Cin(cin), .carry(carry[2]));	// C2 = G2:0 + P2:0 . cin
calculate_carry cc_3(.Pi(st1p[0]), .Gi(st1g[0]), .Cin(cin), .carry(carry[3]));	// C3 = G3:0 + P3:0 . cin
calculate_carry cc_4(.Pi(st8p[1]), .Gi(st8g[1]), .Cin(cin), .carry(carry[4]));	// C4 = G4:0 + P4:0 . cin
calculate_carry cc_5(.Pi(st7p[0]), .Gi(st7g[0]), .Cin(cin), .carry(carry[5]));	// C5 = G5:0 + P5:0 . cin
calculate_carry cc_6(.Pi(st8p[2]), .Gi(st8g[2]), .Cin(cin), .carry(carry[6]));	// C6 = G6:0 + P6:0 . cin
calculate_carry cc_7(.Pi(st2p[0]), .Gi(st2g[0]), .Cin(cin), .carry(carry[7]));	// C7 = G7:0 + P7:0 . cin
calculate_carry cc_8(.Pi(st8p[3]), .Gi(st8g[3]), .Cin(cin), .carry(carry[8]));	// C8 = G8:0 + P8:0 . cin
calculate_carry cc_9(.Pi(st7p[1]), .Gi(st7g[1]), .Cin(cin), .carry(carry[9]));	// C9 = G9:0 + P9:0 . cin
calculate_carry cc_10(.Pi(st8p[4]), .Gi(st8g[4]), .Cin(cin), .carry(carry[10]));	// C10 = G10:0 + P10:0 . cin
calculate_carry cc_11(.Pi(st6p[0]), .Gi(st6g[0]), .Cin(cin), .carry(carry[11]));	// C11 = G11:0 + P11:0 . cin
calculate_carry cc_12(.Pi(st8p[5]), .Gi(st8g[5]), .Cin(cin), .carry(carry[12]));	// C12 = G12:0 + P12:0 . cin
calculate_carry cc_13(.Pi(st7p[2]), .Gi(st7g[2]), .Cin(cin), .carry(carry[13]));	// C13 = G13:0 + P13:0 . cin
calculate_carry cc_14(.Pi(st8p[6]), .Gi(st8g[6]), .Cin(cin), .carry(carry[14]));	// C14 = G14:0 + P14:0 . cin
calculate_carry cc_15(.Pi(st3p[0]), .Gi(st3g[0]), .Cin(cin), .carry(carry[15]));	// C15 = G15:0 + P15:0 . cin
calculate_carry cc_16(.Pi(st8p[7]), .Gi(st8g[7]), .Cin(cin), .carry(carry[16]));	// C16 = G16:0 + P16:0 . cin
calculate_carry cc_17(.Pi(st7p[3]), .Gi(st7g[3]), .Cin(cin), .carry(carry[17]));	// C17 = G17:0 + P17:0 . cin
calculate_carry cc_18(.Pi(st8p[8]), .Gi(st8g[8]), .Cin(cin), .carry(carry[18]));	// C18 = G18:0 + P18:0 . cin
calculate_carry cc_19(.Pi(st6p[1]), .Gi(st6g[1]), .Cin(cin), .carry(carry[19]));	// C19 = G19:0 + P19:0 . cin
calculate_carry cc_20(.Pi(st8p[9]), .Gi(st8g[9]), .Cin(cin), .carry(carry[20]));	// C20 = G20:0 + P20:0 . cin
calculate_carry cc_21(.Pi(st7p[4]), .Gi(st7g[4]), .Cin(cin), .carry(carry[21]));	// C21 = G21:0 + P21:0 . cin
calculate_carry cc_22(.Pi(st8p[10]), .Gi(st8g[10]), .Cin(cin), .carry(carry[22]));	// C22 = G22:0 + P22:0 . cin
calculate_carry cc_23(.Pi(st5p), .Gi(st5g), .Cin(cin), .carry(carry[23]));			// C23 = G23:0 + P23:0 . cin
calculate_carry cc_24(.Pi(st8p[11]), .Gi(st8g[11]), .Cin(cin), .carry(carry[24]));	// C24 = G24:0 + P24:0 . cin
calculate_carry cc_25(.Pi(st7p[5]), .Gi(st7g[5]), .Cin(cin), .carry(carry[25]));	// C25 = G25:0 + P25:0 . cin
calculate_carry cc_26(.Pi(st8p[12]), .Gi(st8g[12]), .Cin(cin), .carry(carry[26]));	// C26 = G26:0 + P26:0 . cin
calculate_carry cc_27(.Pi(st6p[2]), .Gi(st6g[2]), .Cin(cin), .carry(carry[27]));	// C27 = G27:0 + P27:0 . cin
calculate_carry cc_28(.Pi(st8p[13]), .Gi(st8g[13]), .Cin(cin), .carry(carry[28]));	// C28 = G28:0 + P28:0 . cin
calculate_carry cc_29(.Pi(st7p[6]), .Gi(st7g[6]), .Cin(cin), .carry(carry[29]));	// C29 = G29:0 + P29:0 . cin
calculate_carry cc_30(.Pi(st8p[14]), .Gi(st8g[14]), .Cin(cin), .carry(carry[30]));	// C30 = G30:0 + P30:0 . cin
calculate_carry cc_31(.Pi(st4p), .Gi(st4g), .Cin(cin), .carry(carry[31]));			// C31 = G31:0 + P31:0 . cin


assign cout = carry[31];

sum_block sb_0(.Pi(bp[0]), .Gki(cin), .Si(sum[0]));	// S0 = P0 . cin
sum_block sb_1(.Pi(bp[1]), .Gki(carry[0]), .Si(sum[1]));	// S1 = P1 . C0
sum_block sb_2(.Pi(bp[2]), .Gki(carry[1]), .Si(sum[2]));
sum_block sb_3(.Pi(bp[3]), .Gki(carry[2]), .Si(sum[3]));
sum_block sb_4(.Pi(bp[4]), .Gki(carry[3]), .Si(sum[4]));
sum_block sb_5(.Pi(bp[5]), .Gki(carry[4]), .Si(sum[5]));
sum_block sb_6(.Pi(bp[6]), .Gki(carry[5]), .Si(sum[6]));
sum_block sb_7(.Pi(bp[7]), .Gki(carry[6]), .Si(sum[7]));
sum_block sb_8(.Pi(bp[8]), .Gki(carry[7]), .Si(sum[8]));
sum_block sb_9(.Pi(bp[9]), .Gki(carry[8]), .Si(sum[9]));
sum_block sb_10(.Pi(bp[10]), .Gki(carry[9]), .Si(sum[10]));
sum_block sb_11(.Pi(bp[11]), .Gki(carry[10]), .Si(sum[11]));
sum_block sb_12(.Pi(bp[12]), .Gki(carry[11]), .Si(sum[12]));
sum_block sb_13(.Pi(bp[13]), .Gki(carry[12]), .Si(sum[13]));
sum_block sb_14(.Pi(bp[14]), .Gki(carry[13]), .Si(sum[14]));
sum_block sb_15(.Pi(bp[15]), .Gki(carry[14]), .Si(sum[15]));
sum_block sb_16(.Pi(bp[16]), .Gki(carry[15]), .Si(sum[16]));
sum_block sb_17(.Pi(bp[17]), .Gki(carry[16]), .Si(sum[17]));
sum_block sb_18(.Pi(bp[18]), .Gki(carry[17]), .Si(sum[18]));
sum_block sb_19(.Pi(bp[19]), .Gki(carry[18]), .Si(sum[19]));
sum_block sb_20(.Pi(bp[20]), .Gki(carry[19]), .Si(sum[20]));
sum_block sb_21(.Pi(bp[21]), .Gki(carry[20]), .Si(sum[21]));
sum_block sb_22(.Pi(bp[22]), .Gki(carry[21]), .Si(sum[22]));
sum_block sb_23(.Pi(bp[23]), .Gki(carry[22]), .Si(sum[23]));
sum_block sb_24(.Pi(bp[24]), .Gki(carry[23]), .Si(sum[24]));
sum_block sb_25(.Pi(bp[25]), .Gki(carry[24]), .Si(sum[25]));
sum_block sb_26(.Pi(bp[26]), .Gki(carry[25]), .Si(sum[26]));
sum_block sb_27(.Pi(bp[27]), .Gki(carry[26]), .Si(sum[27]));
sum_block sb_28(.Pi(bp[28]), .Gki(carry[27]), .Si(sum[28]));
sum_block sb_29(.Pi(bp[29]), .Gki(carry[28]), .Si(sum[29]));
sum_block sb_30(.Pi(bp[30]), .Gki(carry[29]), .Si(sum[30]));
sum_block sb_31(.Pi(bp[31]), .Gki(carry[30]), .Si(sum[31]));

endmodule


//============ Carry Block ==============
module calculate_carry(Pi, Gi, Cin, carry);
input Pi, Gi, Cin;
output carry;

wire w1;
and #(452.43, 400.56) and_1(w1, Pi, Cin);
or #(458.88, 449.74) or_0(carry, Gi, w1);

endmodule

//============ Sum Block ==============
module sum_block(Pi, Gki, Si);
  input Pi, Gki;
  output Si;
  
  xor #(350.51, 306.96)xor_1(Si, Pi, Gki);
  
endmodule
/////////////////////////////////////////
module group_propagate_generate(Pi, Gi, Pki, Gki, P, G);
  
  input Pi, Gi, Pki, Gki;
  output P, G;
  
  wire w1;

  and #(452.43, 400.56) and_2(P, Pi, Pki);
  
  and #(452.43, 400.56) and_1(w1, Pi, Gki);
  or #(458.88, 449.74) or_0(G, w1, Gi);
  //group_generate gbox(.Pi(Pi), .Gi(Gi), .Gki(Gki), .G(G));

endmodule
/////////////////////////////////////////
module group_generate(Pi, Gi, Gki, G);
  input Pi, Gi, Gki;
  output G;
  
  
  wire w1, w2;
  
  and #(452.43, 400.56) and_(w1, Pi, Gki);
  or #(458.88, 449.74) or_0(G, w1, Gi);
 
endmodule

/////////////////////////////////////
// Propagate Generation
/////////////////////////////////////
 
module bit_propagate_generate(a,b,bp,bg);
input [31:0] a,b;
output [31:0] bg,bp;

assign #(452.43, 400.56) bg=a&b;
assign #(350.51, 306.96) bp=a^b;
endmodule