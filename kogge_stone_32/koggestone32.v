`timescale 1ps / 1fs
module kogge32(a, b, cin, sum, cout);
input [31:0]a;
input [31:0]b;
input cin;
output [31:0]sum;
output cout;

wire [31:0] bp,bg;
wire [30:0] st0p, st0g;  // stage 0
wire [29:0] st1p, st1g;  // stage 1
wire [27:0] st2p, st2g;  // stage 2
wire [26:0] st3p, st3g;  // stage 3
wire [15:0] st4p, st4g;  // stage 4

wire [31:0] carry;
bit_propagate_generate bpg_1(.a(a),.b(b),.bp(bp),.bg(bg));

group_propagate_generate gpgs0_0(.Pi(bp[1]), .Gi(bg[1]), .Pki(bp[0]), .Gki(bg[0]), .P(st0p[0]), .G(st0g[0])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_1(.Pi(bp[2]), .Gi(bg[2]), .Pki(bp[1]), .Gki(bg[1]), .P(st0p[1]), .G(st0g[1])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_2(.Pi(bp[3]), .Gi(bg[3]), .Pki(bp[2]), .Gki(bg[2]), .P(st0p[2]), .G(st0g[2])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_3(.Pi(bp[4]), .Gi(bg[4]), .Pki(bp[3]), .Gki(bg[3]), .P(st0p[3]), .G(st0g[3])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_4(.Pi(bp[5]), .Gi(bg[5]), .Pki(bp[4]), .Gki(bg[4]), .P(st0p[4]), .G(st0g[4])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_5(.Pi(bp[6]), .Gi(bg[6]), .Pki(bp[5]), .Gki(bg[5]), .P(st0p[5]), .G(st0g[5])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_6(.Pi(bp[7]), .Gi(bg[7]), .Pki(bp[6]), .Gki(bg[6]), .P(st0p[6]), .G(st0g[6])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_7(.Pi(bp[8]), .Gi(bg[8]), .Pki(bp[7]), .Gki(bg[7]), .P(st0p[7]), .G(st0g[7])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_8(.Pi(bp[9]), .Gi(bg[9]), .Pki(bp[8]), .Gki(bg[8]), .P(st0p[8]), .G(st0g[8])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_9(.Pi(bp[10]), .Gi(bg[10]), .Pki(bp[9]), .Gki(bg[9]), .P(st0p[9]), .G(st0g[9])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_10(.Pi(bp[11]), .Gi(bg[11]), .Pki(bp[10]), .Gki(bg[10]), .P(st0p[10]), .G(st0g[10])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_11(.Pi(bp[12]), .Gi(bg[12]), .Pki(bp[11]), .Gki(bg[11]), .P(st0p[11]), .G(st0g[11])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_12(.Pi(bp[13]), .Gi(bg[13]), .Pki(bp[12]), .Gki(bg[12]), .P(st0p[12]), .G(st0g[12])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_13(.Pi(bp[14]), .Gi(bg[14]), .Pki(bp[13]), .Gki(bg[13]), .P(st0p[13]), .G(st0g[13])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_14(.Pi(bp[15]), .Gi(bg[15]), .Pki(bp[14]), .Gki(bg[14]), .P(st0p[14]), .G(st0g[14])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_15(.Pi(bp[16]), .Gi(bg[16]), .Pki(bp[15]), .Gki(bg[15]), .P(st0p[15]), .G(st0g[15])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_16(.Pi(bp[17]), .Gi(bg[17]), .Pki(bp[16]), .Gki(bg[16]), .P(st0p[16]), .G(st0g[16])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_17(.Pi(bp[18]), .Gi(bg[18]), .Pki(bp[17]), .Gki(bg[17]), .P(st0p[17]), .G(st0g[17])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_18(.Pi(bp[19]), .Gi(bg[19]), .Pki(bp[18]), .Gki(bg[18]), .P(st0p[18]), .G(st0g[18])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_19(.Pi(bp[20]), .Gi(bg[20]), .Pki(bp[19]), .Gki(bg[19]), .P(st0p[19]), .G(st0g[19])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_20(.Pi(bp[21]), .Gi(bg[21]), .Pki(bp[20]), .Gki(bg[20]), .P(st0p[20]), .G(st0g[20])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_21(.Pi(bp[22]), .Gi(bg[22]), .Pki(bp[21]), .Gki(bg[21]), .P(st0p[21]), .G(st0g[21])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_22(.Pi(bp[23]), .Gi(bg[23]), .Pki(bp[22]), .Gki(bg[22]), .P(st0p[22]), .G(st0g[22])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_23(.Pi(bp[24]), .Gi(bg[24]), .Pki(bp[23]), .Gki(bg[23]), .P(st0p[23]), .G(st0g[23])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_24(.Pi(bp[25]), .Gi(bg[25]), .Pki(bp[24]), .Gki(bg[24]), .P(st0p[24]), .G(st0g[24])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_25(.Pi(bp[26]), .Gi(bg[26]), .Pki(bp[25]), .Gki(bg[25]), .P(st0p[25]), .G(st0g[25])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_26(.Pi(bp[27]), .Gi(bg[27]), .Pki(bp[26]), .Gki(bg[26]), .P(st0p[26]), .G(st0g[26])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_27(.Pi(bp[28]), .Gi(bg[28]), .Pki(bp[27]), .Gki(bg[27]), .P(st0p[27]), .G(st0g[27])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_28(.Pi(bp[29]), .Gi(bg[29]), .Pki(bp[28]), .Gki(bg[28]), .P(st0p[28]), .G(st0g[28])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_29(.Pi(bp[30]), .Gi(bg[30]), .Pki(bp[29]), .Gki(bg[29]), .P(st0p[29]), .G(st0g[29])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs0_30(.Pi(bp[31]), .Gi(bg[31]), .Pki(bp[30]), .Gki(bg[30]), .P(st0p[30]), .G(st0g[30])); // generate -> P1:0 and G1:0

group_propagate_generate gpgs1_0(.Pi(st0p[1]), .Gi(st0g[1]), .Pki(bp[0]), .Gki(bg[0]), .P(st1p[0]), .G(st1g[0])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_1(.Pi(st0p[2]), .Gi(st0g[2]), .Pki(st0p[0]), .Gki(st0g[0]), .P(st1p[1]), .G(st1g[1])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_2(.Pi(st0p[3]), .Gi(st0g[3]), .Pki(st0p[1]), .Gki(st0g[1]), .P(st1p[2]), .G(st1g[2])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_3(.Pi(st0p[4]), .Gi(st0g[4]), .Pki(st0p[2]), .Gki(st0g[2]), .P(st1p[3]), .G(st1g[3])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_4(.Pi(st0p[5]), .Gi(st0g[5]), .Pki(st0p[3]), .Gki(st0g[3]), .P(st1p[4]), .G(st1g[4])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_5(.Pi(st0p[6]), .Gi(st0g[6]), .Pki(st0p[4]), .Gki(st0g[4]), .P(st1p[5]), .G(st1g[5])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_6(.Pi(st0p[7]), .Gi(st0g[7]), .Pki(st0p[5]), .Gki(st0g[5]), .P(st1p[6]), .G(st1g[6])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_7(.Pi(st0p[8]), .Gi(st0g[8]), .Pki(st0p[6]), .Gki(st0g[6]), .P(st1p[7]), .G(st1g[7])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_8(.Pi(st0p[9]), .Gi(st0g[9]), .Pki(st0p[7]), .Gki(st0g[7]), .P(st1p[8]), .G(st1g[8])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_9(.Pi(st0p[10]), .Gi(st0g[10]), .Pki(st0p[8]),   .Gki(st0g[8]),  .P(st1p[9]), .G(st1g[9])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_10(.Pi(st0p[11]), .Gi(st0g[11]), .Pki(st0p[9]),  .Gki(st0g[9]),  .P(st1p[10]), .G(st1g[10])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_11(.Pi(st0p[12]), .Gi(st0g[12]), .Pki(st0p[10]), .Gki(st0g[10]), .P(st1p[11]), .G(st1g[11])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_12(.Pi(st0p[13]), .Gi(st0g[13]), .Pki(st0p[11]), .Gki(st0g[11]), .P(st1p[12]), .G(st1g[12])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_13(.Pi(st0p[14]), .Gi(st0g[14]), .Pki(st0p[12]), .Gki(st0g[12]), .P(st1p[13]), .G(st1g[13])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_14(.Pi(st0p[15]), .Gi(st0g[15]), .Pki(st0p[13]), .Gki(st0g[13]), .P(st1p[14]), .G(st1g[14])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_15(.Pi(st0p[16]), .Gi(st0g[16]), .Pki(st0p[14]), .Gki(st0g[14]), .P(st1p[15]), .G(st1g[15])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_16(.Pi(st0p[17]), .Gi(st0g[17]), .Pki(st0p[15]), .Gki(st0g[15]), .P(st1p[16]), .G(st1g[16])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_17(.Pi(st0p[18]), .Gi(st0g[18]), .Pki(st0p[16]), .Gki(st0g[16]), .P(st1p[17]), .G(st1g[17])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_18(.Pi(st0p[19]), .Gi(st0g[19]), .Pki(st0p[17]), .Gki(st0g[17]), .P(st1p[18]), .G(st1g[18])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_19(.Pi(st0p[20]), .Gi(st0g[20]), .Pki(st0p[18]), .Gki(st0g[18]), .P(st1p[19]), .G(st1g[19])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_20(.Pi(st0p[21]), .Gi(st0g[21]), .Pki(st0p[19]), .Gki(st0g[19]), .P(st1p[20]), .G(st1g[20])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_21(.Pi(st0p[22]), .Gi(st0g[22]), .Pki(st0p[20]), .Gki(st0g[20]), .P(st1p[21]), .G(st1g[21])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_22(.Pi(st0p[23]), .Gi(st0g[23]), .Pki(st0p[21]), .Gki(st0g[21]), .P(st1p[22]), .G(st1g[22])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_23(.Pi(st0p[24]), .Gi(st0g[24]), .Pki(st0p[22]), .Gki(st0g[22]), .P(st1p[23]), .G(st1g[23])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_24(.Pi(st0p[25]), .Gi(st0g[25]), .Pki(st0p[23]), .Gki(st0g[23]), .P(st1p[24]), .G(st1g[24])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_25(.Pi(st0p[26]), .Gi(st0g[26]), .Pki(st0p[24]), .Gki(st0g[24]), .P(st1p[25]), .G(st1g[25])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_26(.Pi(st0p[27]), .Gi(st0g[27]), .Pki(st0p[25]), .Gki(st0g[25]), .P(st1p[26]), .G(st1g[26])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_27(.Pi(st0p[28]), .Gi(st0g[28]), .Pki(st0p[26]), .Gki(st0g[26]), .P(st1p[27]), .G(st1g[27])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_28(.Pi(st0p[29]), .Gi(st0g[29]), .Pki(st0p[27]), .Gki(st0g[27]), .P(st1p[28]), .G(st1g[28])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs1_29(.Pi(st0p[30]), .Gi(st0g[30]), .Pki(st0p[28]), .Gki(st0g[28]), .P(st1p[29]), .G(st1g[29])); // generate -> P1:0 and G1:0


group_propagate_generate gpgs2_0(.Pi(st1p[2]), .Gi(st1g[2]), .Pki(bp[0]), .Gki(bg[0]), .P(st2p[0]), .G(st2g[0])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs2_1(.Pi(st1p[3]), .Gi(st1g[3]), .Pki(st0p[0]), .Gki(st0g[0]), .P(st2p[1]), .G(st2g[1])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs2_2(.Pi(st1p[4]), .Gi(st1g[4]), .Pki(st1p[0]), .Gki(st1g[0]), .P(st2p[2]), .G(st2g[2])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs2_3(.Pi(st1p[5]), .Gi(st1g[5]), .Pki(st1p[1]), .Gki(st1g[1]), .P(st2p[3]), .G(st2g[3])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs2_4(.Pi(st1p[6]), .Gi(st1g[6]), .Pki(st1p[2]), .Gki(st1g[2]), .P(st2p[4]), .G(st2g[4])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs2_5(.Pi(st1p[7]), .Gi(st1g[7]), .Pki(st1p[3]), .Gki(st1g[3]), .P(st2p[5]), .G(st2g[5])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs2_6(.Pi(st1p[8]), .Gi(st1g[8]), .Pki(st1p[4]), .Gki(st1g[4]), .P(st2p[6]), .G(st2g[6])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs2_7(.Pi(st1p[9]), .Gi(st1g[9]), .Pki(st1p[5]), .Gki(st1g[5]), .P(st2p[7]), .G(st2g[7])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs2_8(.Pi(st1p[10]), .Gi(st1g[10]), .Pki(st1p[6]), .Gki(st1g[6]), .P(st2p[8]), .G(st2g[8])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs2_9(.Pi(st1p[11]), .Gi(st1g[11]), .Pki(st1p[7]), .Gki(st1g[7]), .P(st2p[9]), .G(st2g[9])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs2_10(.Pi(st1p[12]), .Gi(st1g[12]), .Pki(st1p[8]), .Gki(st1g[8]), .P(st2p[10]), .G(st2g[10])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs2_11(.Pi(st1p[13]), .Gi(st1g[13]), .Pki(st1p[9]), .Gki(st1g[9]), .P(st2p[11]), .G(st2g[11])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs2_12(.Pi(st1p[14]), .Gi(st1g[14]), .Pki(st1p[10]), .Gki(st1g[10]), .P(st2p[12]), .G(st2g[12])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs2_13(.Pi(st1p[15]), .Gi(st1g[15]), .Pki(st1p[11]), .Gki(st1g[11]), .P(st2p[13]), .G(st2g[13])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs2_14(.Pi(st1p[16]), .Gi(st1g[16]), .Pki(st1p[12]), .Gki(st1g[12]), .P(st2p[14]), .G(st2g[14])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs2_15(.Pi(st1p[17]), .Gi(st1g[17]), .Pki(st1p[13]), .Gki(st1g[13]), .P(st2p[15]), .G(st2g[15])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs2_16(.Pi(st1p[18]), .Gi(st1g[18]), .Pki(st1p[14]), .Gki(st1g[14]), .P(st2p[16]), .G(st2g[16])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs2_17(.Pi(st1p[19]), .Gi(st1g[19]), .Pki(st1p[15]), .Gki(st1g[15]), .P(st2p[17]), .G(st2g[17])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs2_18(.Pi(st1p[20]), .Gi(st1g[20]), .Pki(st1p[16]), .Gki(st1g[16]), .P(st2p[18]), .G(st2g[18])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs2_19(.Pi(st1p[21]), .Gi(st1g[21]), .Pki(st1p[17]), .Gki(st1g[17]), .P(st2p[19]), .G(st2g[19])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs2_20(.Pi(st1p[22]), .Gi(st1g[22]), .Pki(st1p[18]), .Gki(st1g[18]), .P(st2p[20]), .G(st2g[20])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs2_21(.Pi(st1p[23]), .Gi(st1g[23]), .Pki(st1p[19]), .Gki(st1g[19]), .P(st2p[21]), .G(st2g[21])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs2_22(.Pi(st1p[24]), .Gi(st1g[24]), .Pki(st1p[20]), .Gki(st1g[20]), .P(st2p[22]), .G(st2g[22])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs2_23(.Pi(st1p[25]), .Gi(st1g[25]), .Pki(st1p[21]), .Gki(st1g[21]), .P(st2p[23]), .G(st2g[23])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs2_24(.Pi(st1p[26]), .Gi(st1g[26]), .Pki(st1p[22]), .Gki(st1g[22]), .P(st2p[24]), .G(st2g[24])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs2_25(.Pi(st1p[27]), .Gi(st1g[27]), .Pki(st1p[23]), .Gki(st1g[23]), .P(st2p[25]), .G(st2g[25])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs2_26(.Pi(st1p[28]), .Gi(st1g[28]), .Pki(st1p[24]), .Gki(st1g[24]), .P(st2p[26]), .G(st2g[26])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs2_27(.Pi(st1p[29]), .Gi(st1g[29]), .Pki(st1p[25]), .Gki(st1g[25]), .P(st2p[27]), .G(st2g[27])); // generate -> P1:0 and G1:0


group_propagate_generate gpgs3_0(.Pi(st2p[4]), .Gi(st2g[4]), .Pki(bp[0]), .Gki(bg[0]), .P(st3p[0]), .G(st3g[0])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs3_1(.Pi(st2p[5]), .Gi(st2g[5]), .Pki(st0p[0]), .Gki(st0g[0]), .P(st3p[1]), .G(st3g[1])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs3_2(.Pi(st2p[6]), .Gi(st2g[6]), .Pki(st1p[0]), .Gki(st1g[0]), .P(st3p[2]), .G(st3g[2])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs3_3(.Pi(st2p[7]), .Gi(st2g[7]), .Pki(st1p[1]), .Gki(st1g[1]), .P(st3p[3]), .G(st3g[3])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs3_4(.Pi(st2p[8]), .Gi(st2g[8]), .Pki(st2p[0]), .Gki(st2g[0]), .P(st3p[4]), .G(st3g[4])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs3_5(.Pi(st2p[9]), .Gi(st2g[9]), .Pki(st2p[1]), .Gki(st2g[1]), .P(st3p[5]), .G(st3g[5])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs3_6(.Pi(st2p[10]), .Gi(st2g[10]), .Pki(st2p[2]), .Gki(st2g[2]), .P(st3p[6]), .G(st3g[6])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs3_7(.Pi(st2p[11]), .Gi(st2g[11]), .Pki(st2p[3]), .Gki(st2g[3]), .P(st3p[7]), .G(st3g[7])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs3_8(.Pi(st2p[12]), .Gi(st2g[12]), .Pki(st2p[4]), .Gki(st2g[4]), .P(st3p[8]), .G(st3g[8])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs3_9(.Pi(st2p[13]), .Gi(st2g[13]), .Pki(st2p[5]), .Gki(st2g[5]), .P(st3p[9]), .G(st3g[9])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs3_10(.Pi(st2p[14]), .Gi(st2g[14]), .Pki(st2p[6]), .Gki(st2g[6]), .P(st3p[10]), .G(st3g[10])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs3_11(.Pi(st2p[15]), .Gi(st2g[15]), .Pki(st2p[7]), .Gki(st2g[7]), .P(st3p[11]), .G(st3g[11])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs3_12(.Pi(st2p[16]), .Gi(st2g[16]), .Pki(st2p[8]), .Gki(st2g[8]), .P(st3p[12]), .G(st3g[12])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs3_13(.Pi(st2p[17]), .Gi(st2g[17]), .Pki(st2p[9]), .Gki(st2g[9]), .P(st3p[13]), .G(st3g[13])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs3_14(.Pi(st2p[18]), .Gi(st2g[18]), .Pki(st2p[10]), .Gki(st2g[10]), .P(st3p[14]), .G(st3g[14])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs3_15(.Pi(st2p[19]), .Gi(st2g[19]), .Pki(st2p[11]), .Gki(st2g[11]), .P(st3p[15]), .G(st3g[15])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs3_16(.Pi(st2p[20]), .Gi(st2g[20]), .Pki(st2p[12]), .Gki(st2g[12]), .P(st3p[16]), .G(st3g[16])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs3_17(.Pi(st2p[21]), .Gi(st2g[21]), .Pki(st2p[13]), .Gki(st2g[13]), .P(st3p[17]), .G(st3g[17])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs3_18(.Pi(st2p[22]), .Gi(st2g[22]), .Pki(st2p[14]), .Gki(st2g[14]), .P(st3p[18]), .G(st3g[18])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs3_19(.Pi(st2p[23]), .Gi(st2g[23]), .Pki(st2p[15]), .Gki(st2g[15]), .P(st3p[19]), .G(st3g[19])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs3_20(.Pi(st2p[24]), .Gi(st2g[24]), .Pki(st2p[16]), .Gki(st2g[16]), .P(st3p[20]), .G(st3g[20])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs3_21(.Pi(st2p[25]), .Gi(st2g[25]), .Pki(st2p[17]), .Gki(st2g[17]), .P(st3p[21]), .G(st3g[21])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs3_22(.Pi(st2p[26]), .Gi(st2g[26]), .Pki(st2p[18]), .Gki(st2g[18]), .P(st3p[22]), .G(st3g[22])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs3_23(.Pi(st2p[27]), .Gi(st2g[27]), .Pki(st2p[19]), .Gki(st2g[19]), .P(st3p[23]), .G(st3g[23])); // generate -> P1:0 and G1:0


group_propagate_generate gpgs4_0(.Pi(st3p[8]), .Gi(st3g[8]), .Pki(bp[0]), .Gki(bg[0]), .P(st4p[0]), .G(st4g[0])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs4_1(.Pi(st3p[9]), .Gi(st3g[9]), .Pki(st0p[0]), .Gki(st0g[0]), .P(st4p[1]), .G(st4g[1])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs4_2(.Pi(st3p[10]), .Gi(st3g[10]), .Pki(st1p[0]), .Gki(st1g[0]), .P(st4p[2]), .G(st4g[2])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs4_3(.Pi(st3p[11]), .Gi(st3g[11]), .Pki(st1p[1]), .Gki(st1g[1]), .P(st4p[3]), .G(st4g[3])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs4_4(.Pi(st3p[12]), .Gi(st3g[12]), .Pki(st2p[0]), .Gki(st2g[0]), .P(st4p[4]), .G(st4g[4])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs4_5(.Pi(st3p[13]), .Gi(st3g[13]), .Pki(st2p[1]), .Gki(st2g[1]), .P(st4p[5]), .G(st4g[5])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs4_6(.Pi(st3p[14]), .Gi(st3g[14]), .Pki(st2p[2]), .Gki(st2g[2]), .P(st4p[6]), .G(st4g[6])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs4_7(.Pi(st3p[15]), .Gi(st3g[15]), .Pki(st2p[3]), .Gki(st2g[3]), .P(st4p[7]), .G(st4g[7])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs4_8(.Pi(st3p[16]), .Gi(st3g[16]), .Pki(st3p[0]), .Gki(st3g[0]), .P(st4p[8]), .G(st4g[8])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs4_9(.Pi(st3p[17]), .Gi(st3g[17]), .Pki(st3p[1]), .Gki(st3g[1]), .P(st4p[9]), .G(st4g[9])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs4_10(.Pi(st3p[18]), .Gi(st3g[18]), .Pki(st3p[2]), .Gki(st3g[2]), .P(st4p[10]), .G(st4g[10])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs4_11(.Pi(st3p[19]), .Gi(st3g[19]), .Pki(st3p[3]), .Gki(st3g[3]), .P(st4p[11]), .G(st4g[11])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs4_12(.Pi(st3p[20]), .Gi(st3g[20]), .Pki(st3p[4]), .Gki(st3g[4]), .P(st4p[12]), .G(st4g[12])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs4_13(.Pi(st3p[21]), .Gi(st3g[21]), .Pki(st3p[5]), .Gki(st3g[5]), .P(st4p[13]), .G(st4g[13])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs4_14(.Pi(st3p[22]), .Gi(st3g[22]), .Pki(st3p[6]), .Gki(st3g[6]), .P(st4p[14]), .G(st4g[14])); // generate -> P1:0 and G1:0
group_propagate_generate gpgs4_15(.Pi(st3p[23]), .Gi(st3g[23]), .Pki(st3p[7]), .Gki(st3g[7]), .P(st4p[15]), .G(st4g[15])); // generate -> P1:0 and G1:0


calculate_carry cc_0(.Pi(bp[0]), .Gi(bg[0]), .Cin(cin), .carry(carry[0]));
calculate_carry cc_1(.Pi(st0p[0]), .Gi(st0g[0]), .Cin(cin), .carry(carry[1]));
calculate_carry cc_2(.Pi(st1p[0]), .Gi(st1g[0]), .Cin(cin), .carry(carry[2]));
calculate_carry cc_3(.Pi(st1p[1]), .Gi(st1g[1]), .Cin(cin), .carry(carry[3]));
calculate_carry cc_4(.Pi(st2p[0]), .Gi(st2g[0]), .Cin(cin), .carry(carry[4]));
calculate_carry cc_5(.Pi(st2p[1]), .Gi(st2g[1]), .Cin(cin), .carry(carry[5]));
calculate_carry cc_6(.Pi(st2p[2]), .Gi(st2g[2]), .Cin(cin), .carry(carry[6]));
calculate_carry cc_7(.Pi(st2p[3]), .Gi(st2g[3]), .Cin(cin), .carry(carry[7]));
calculate_carry cc_8(.Pi(st3p[0]), .Gi(st3g[0]), .Cin(cin), .carry(carry[8]));
calculate_carry cc_9(.Pi(st3p[1]), .Gi(st3g[1]), .Cin(cin), .carry(carry[9]));
calculate_carry cc_10(.Pi(st3p[2]), .Gi(st3g[2]), .Cin(cin), .carry(carry[10]));
calculate_carry cc_11(.Pi(st3p[3]), .Gi(st3g[3]), .Cin(cin), .carry(carry[11]));
calculate_carry cc_12(.Pi(st3p[4]), .Gi(st3g[4]), .Cin(cin), .carry(carry[12]));
calculate_carry cc_13(.Pi(st3p[5]), .Gi(st3g[5]), .Cin(cin), .carry(carry[13]));
calculate_carry cc_14(.Pi(st3p[6]), .Gi(st3g[6]), .Cin(cin), .carry(carry[14]));
calculate_carry cc_15(.Pi(st3p[7]), .Gi(st3g[7]), .Cin(cin), .carry(carry[15]));
calculate_carry cc_16(.Pi(st4p[0]), .Gi(st4g[0]), .Cin(cin), .carry(carry[16]));
calculate_carry cc_17(.Pi(st4p[1]), .Gi(st4g[1]), .Cin(cin), .carry(carry[17]));
calculate_carry cc_18(.Pi(st4p[2]), .Gi(st4g[2]), .Cin(cin), .carry(carry[18]));
calculate_carry cc_19(.Pi(st4p[3]), .Gi(st4g[3]), .Cin(cin), .carry(carry[19]));
calculate_carry cc_20(.Pi(st4p[4]), .Gi(st4g[4]), .Cin(cin), .carry(carry[20]));
calculate_carry cc_21(.Pi(st4p[5]), .Gi(st4g[5]), .Cin(cin), .carry(carry[21]));
calculate_carry cc_22(.Pi(st4p[6]), .Gi(st4g[6]), .Cin(cin), .carry(carry[22]));
calculate_carry cc_23(.Pi(st4p[7]), .Gi(st4g[7]), .Cin(cin), .carry(carry[23]));
calculate_carry cc_24(.Pi(st4p[8]), .Gi(st4g[8]), .Cin(cin), .carry(carry[24]));
calculate_carry cc_25(.Pi(st4p[9]), .Gi(st4g[9]), .Cin(cin), .carry(carry[25]));
calculate_carry cc_26(.Pi(st4p[10]), .Gi(st4g[10]), .Cin(cin), .carry(carry[26]));
calculate_carry cc_27(.Pi(st4p[11]), .Gi(st4g[11]), .Cin(cin), .carry(carry[27]));
calculate_carry cc_28(.Pi(st4p[12]), .Gi(st4g[12]), .Cin(cin), .carry(carry[28]));
calculate_carry cc_29(.Pi(st4p[13]), .Gi(st4g[13]), .Cin(cin), .carry(carry[29]));
calculate_carry cc_30(.Pi(st4p[14]), .Gi(st4g[14]), .Cin(cin), .carry(carry[30]));
calculate_carry cc_31(.Pi(st4p[15]), .Gi(st4g[15]), .Cin(cin), .carry(carry[31]));

assign cout = carry[31];

sum_block sb_0(.Pi(bp[0]), .Gki(cin), .Si(sum[0]));
sum_block sb_1(.Pi(bp[1]), .Gki(carry[0]), .Si(sum[1]));
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

/////////////////////////////////////////
module calculate_carry(Pi, Gi, Cin, carry);
input Pi, Gi, Cin;
output carry;

wire w1;
and #(452.43, 400.56)and_1(w1, Pi, Cin);
or #(458.88, 449.74)or_0(carry, Gi, w1);

endmodule
/////////////////////////////////////////
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

  and #(452.43, 400.56)and_2(P, Pi, Pki);
  
  and #(452.43, 400.56)and_1(w1, Pi, Gki);
  or #(458.88, 449.74)or_0(G, w1, Gi);
  //group_generate gbox(.Pi(Pi), .Gi(Gi), .Gki(Gki), .G(G));

endmodule
/////////////////////////////////////////
module group_generate(Pi, Gi, Gki, G);
  input Pi, Gi, Gki;
  output G;
  
  wire w1, w2;
  
  and #(452.43, 400.56)and_1(w1, Pi, Gki);
  or #(458.88, 449.74)or_0(G, w1, Gi);
 
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
