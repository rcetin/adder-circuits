`timescale 1ps / 1fs
module cla32(a, b, cin, sum, cout);
input [31:0]a;
input [31:0]b;
input cin;
output [31:0]sum;
output cout;

wire [7:0]c,p,g;
cla4 cla4_0(.a(a[3:0]), .b(b[3:0]), .cin(cin), .sum(sum[3:0]), .cout(c[0])/*, .P(p[0]), .G(g[0])*/);
cla4 cla4_1(.a(a[7:4]), .b(b[7:4]), .cin(c[0]), .sum(sum[7:4]), .cout(c[1])/*, .P(p[1]), .G(g[1])*/);
cla4 cla4_2(.a(a[11:8]), .b(b[11:8]), .cin(c[1]), .sum(sum[11:8]), .cout(c[2])/*, .P(p[2]), .G(g[2])*/);
cla4 cla4_3(.a(a[15:12]), .b(b[15:12]), .cin(c[2]), .sum(sum[15:12]), .cout(c[3])/*, .P(p[3]), .G(g[3])*/);
cla4 cla4_4(.a(a[19:16]), .b(b[19:16]), .cin(c[3]), .sum(sum[19:16]), .cout(c[4])/*, .P(p[4]), .G(g[4])*/);
cla4 cla4_5(.a(a[23:20]), .b(b[23:20]), .cin(c[4]), .sum(sum[23:20]), .cout(c[5])/*, .P(p[5]), .G(g[5])*/);
cla4 cla4_6(.a(a[27:24]), .b(b[27:24]), .cin(c[5]), .sum(sum[27:24]), .cout(c[6])/*, .P(p[6]), .G(g[6])*/);
cla4 cla4_7(.a(a[31:28]), .b(b[31:28]), .cin(c[6]), .sum(sum[31:28]), .cout(cout)/*, .P(p[7]), .G(g[7])*/);

endmodule // cla8
///////////////////////////////////////////
module cla4(a, b, cin, sum, cout/*, P, G*/);
input [3:0]a;
input [3:0]b;
input cin;
output [3:0]sum;
output cout;
//output cout, P, G;

wire [3:0] bg, bp;	// first level propagate generate 0:0
wire [3:0] carry;

bit_propagate_generate bpg_1(.a(a),.b(b),.bp(bp),.bg(bg));

assign carry[0] = bg[0] | (bp[0] & cin);
assign carry[1] = bg[1] | (bp[1] & bg[0]) | (bp[1] & bp[0] & cin);
assign carry[2] = bg[2] | (bp[2] & bg[1]) | (bp[2] & bp[1] & bg[0]) | (bp[2] & bp[1] & bp[0] & cin);
assign carry[3] = bg[3] | (bp[3] & bg[2]) | (bp[3] & bp[2] & bg[1]) | (bp[3] & bp[2] & bp[1] & bg[0]) | (bp[3] & bp[2] & bp[1] & bp[0] & cin);

//assign P = bp[3] & bp[2] & bp[1] & bp[0];
//assign G = carry[3];

assign cout = carry[3];

sum_block sb_0(.Pi(bp[0]), .Gki(cin), .Si(sum[0]));	// S0 = P0 . cin
sum_block sb_1(.Pi(bp[1]), .Gki(carry[0]), .Si(sum[1]));	// S1 = P1 . C0
sum_block sb_2(.Pi(bp[2]), .Gki(carry[1]), .Si(sum[2]));
sum_block sb_3(.Pi(bp[3]), .Gki(carry[2]), .Si(sum[3]));


endmodule
//============ Carry Block ==============
module calculate_carry(Pi, Gi, Cin, carry);
input Pi, Gi, Cin;
output carry;

wire w1;
and #(8.185, 199.34)and_1(w1, Pi, Cin);
or #(104.77, 107.18)or_0(carry, Gi, w1);

endmodule

//============ Sum Block ==============
module sum_block(Pi, Gki, Si);
  input Pi, Gki;
  output Si;
  
  xor #(79.535, 141.04)xor_1(Si, Pi, Gki);
  
endmodule
/////////////////////////////////////////
module group_propagate_generate(Pi, Gi, Pki, Gki, P, G);
  
  input Pi, Gi, Pki, Gki;
  output P, G;
  
  wire w1;

  and #(8.185, 199.34)and_2(P, Pi, Pki);
   and #(8.185, 199.34)and_1(w1, Pi, Gki);
  or #(104.77, 107.18)or_0(G, w1, Gi);
endmodule

/////////////////////////////////////
// Propagate Generation
/////////////////////////////////////
 
module bit_propagate_generate(a,b,bp,bg);
input [3:0] a,b;
output [3:0] bg,bp;

assign #(8.185, 199.34) bg=a&b;
assign #(79.535, 141.04) bp=a^b;
endmodule