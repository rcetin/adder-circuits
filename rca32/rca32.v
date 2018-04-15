`timescale 1ps / 1fs	// (unit, precision)
//////////////////////////////////////
//32-bit Ripple Carry Adder 
/////////////////////////////////////
 
module ripple_carry_32_bit(a, b, cin, sum, cout);
input [31:0] a,b;
input cin;
output [31:0] sum;
output cout;
wire c[6:0];
 
ripple_carry_4_bit rca0 (.a(a[3:0]), .b(b[3:0]), .cin(cin), .sum(sum[3:0]), .cout(c[0])); 
ripple_carry_4_bit rca1 (.a(a[7:4]), .b(b[7:4]), .cin(c[0]), .sum(sum[7:4]), .cout(c[1])); 
ripple_carry_4_bit rca2 (.a(a[11:8]), .b(b[11:8]), .cin(c[1]), .sum(sum[11:8]), .cout(c[2])); 
ripple_carry_4_bit rca3 (.a(a[15:12]), .b(b[15:12]), .cin(c[2]), .sum(sum[15:12]), .cout(c[3]));
ripple_carry_4_bit rca4 (.a(a[19:16]), .b(b[19:16]), .cin(c[3]), .sum(sum[19:16]), .cout(c[4])); 
ripple_carry_4_bit rca5 (.a(a[23:20]), .b(b[23:20]), .cin(c[4]), .sum(sum[23:20]), .cout(c[5])); 
ripple_carry_4_bit rca6 (.a(a[27:24]), .b(b[27:24]), .cin(c[5]), .sum(sum[27:24]), .cout(c[6])); 
ripple_carry_4_bit rca7 (.a(a[31:28]), .b(b[31:28]), .cin(c[6]), .sum(sum[31:28]), .cout(cout));

endmodule
 
////////////////////////////////////
//4-bit Ripple Carry Adder
////////////////////////////////////
 
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
 
//////////////////////////////
//1bit Full Adder
/////////////////////////////
module full_adder(a,b,cin,sum, cout);
input a,b,cin;
output sum, cout;
wire x,y,z;
half_adder h1(.a(a), .b(b), .sum(x), .cout(y));
half_adder h2(.a(x), .b(cin), .sum(sum), .cout(z));
or #(458.88, 449.74) or_1(cout,z,y);
endmodule
 
///////////////////////////
// 1 bit Half Adder
//////////////////////////
module half_adder( a,b, sum, cout );
input a,b;
output sum, cout;
xor #(350.51, 306.96) xor_1 (sum,a,b);
and #(452.43, 400.56) and_1 (cout,a,b);
endmodule
