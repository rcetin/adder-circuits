`timescale 1ps / 1fs
 
module carry_skip_32bit(a, b, cin, sum, cout);
input [31:0] a,b;
input cin;
output cout;
output [31:0] sum;
 
wire [6:0] c;
 
carry_skip_4bit csa1(.a(a[3:0]), .b(b[3:0]), .cin(cin), .sum(sum[3:0]), .cout(c[0]));
carry_skip_4bit csa2 (.a(a[7:4]), .b(b[7:4]), .cin(c[0]), .sum(sum[7:4]), .cout(c[1]));
carry_skip_4bit csa3(.a(a[11:8]), .b(b[11:8]), .cin(c[1]), .sum(sum[11:8]), .cout(c[2]));
carry_skip_4bit csa4(.a(a[15:12]), .b(b[15:12]), .cin(c[2]), .sum(sum[15:12]), .cout(c[3]));
carry_skip_4bit csa5(.a(a[19:16]), .b(b[19:16]), .cin(c[3]), .sum(sum[19:16]), .cout(c[4]));
carry_skip_4bit csa6 (.a(a[23:20]), .b(b[23:20]), .cin(c[4]), .sum(sum[23:20]), .cout(c[5]));
carry_skip_4bit csa7(.a(a[27:24]), .b(b[27:24]), .cin(c[5]), .sum(sum[27:24]), .cout(c[6]));
carry_skip_4bit csa8(.a(a[31:28]), .b(b[31:28]), .cin(c[6]), .sum(sum[31:28]), .cout(cout));
endmodule
 
/////////////////////////////////////
// Carry Skip Adder 4 bit
//////////////////////////////////////
 
module carry_skip_4bit(a, b, cin, sum, cout);
input [3:0] a,b;
input cin;
output [3:0] sum;
output cout;
wire [3:0] p;
wire c0;
wire bp;
 
ripple_carry_4_bit rca1 (.a(a[3:0]), .b(b[3:0]), .cin(cin), .sum(sum[3:0]), .cout(c0));
generate_p p1(a,b,p,bp);
mux2X1 m0(.in0(c0),.in1(cin),.sel(bp),.out(cout));
 
endmodule
/////////////////////////////////////
// Propagate Generation
/////////////////////////////////////
 
module generate_p(a,b,p,bp);
input [3:0] a,b;
output [3:0] p;
output bp;

xor #(350.51, 306.96)xor_0(p[0], a[0], b[0]);
xor #(350.51, 306.96)xor_1(p[1], a[1], b[1]);
xor #(350.51, 306.96)xor_2(p[2], a[2], b[2]);
xor #(350.51, 306.96)xor_3(p[3], a[3], b[3]);
and #(476.17, 450.08)and_0(bp, p[0], p[1], p[2], p[3]);
endmodule
 
/////////////////////////////////
//4-bit Ripple Carry Adder
/////////////////////////////////
module ripple_carry_4_bit(a, b, cin, sum, cout);
input [3:0] a,b;
input cin;
wire c1,c2,c3;
output [3:0] sum;
output cout;
 
full_adder fa0(.a(a[0]), .b(b[0]),.cin(cin), .sum(sum[0]),.cout(c1));
full_adder fa1(.a(a[1]), .b(b[1]), .cin(c1), .sum(sum[1]),.cout(c2));
full_adder fa2(.a(a[2]), .b(b[2]), .cin(c2), .sum(sum[2]),.cout(c3));
full_adder fa3(.a(a[3]), .b(b[3]), .cin(c3), .sum(sum[3]),.cout(cout));
endmodule
 
///////////////////////////////////////////
//1bit Full Adder
//////////////////////////////////////////
module full_adder(a,b,cin,sum, cout);
input a,b,cin;
output sum, cout;
wire x,y,z;
half_adder h1(.a(a), .b(b), .sum(x), .cout(y));
half_adder h2(.a(x), .b(cin), .sum(sum), .cout(z));
or #(458.88, 449.74)or_1(cout,z,y);
endmodule
/////////////////////////////////////////////////////////////////////////////
// 1 bit Half Adder
//////////////////////////////////////////////////////////////////////
module half_adder( a,b, sum, cout );
input a,b;
output sum, cout;
xor #(350.51, 306.96)xor_1 (sum,a,b);
and #(452.43, 400.56)and_1 (cout,a,b);
endmodule
 
/////////////////////////
//2X1 Mux
/////////////////////////
module mux2X1(in0, in1, sel, out);
input in0, in1;
input sel;
output out;
wire selbar, w0, w1;

and #(452.43, 400.56)and_0(w0, sel, in1);
not #(387.77, 363.86)not_0(selbar, sel);
and #(452.43, 400.56)and_1(w1, selbar, in0);
or #(458.88, 449.74)or_0(out, w0, w1);

endmodule