`timescale 1ps / 1fs

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:52:38 04/01/2018
// Design Name:   ripple_carry_16_bit
// Module Name:   /home/rcetin/workspace/ISE_workspace/fa16/fa16_tb.v
// Project Name:  fa16
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_carry_16_bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fa16_tb;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	reg cin;

	// Outputs
	wire [15:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	ripple_carry_16_bit uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
$display($time, " << Starting the Simulation >>");
     a=0; b=0; cin=0;
#1000 a= 16'b0000000000011111; b=16'b000000000001100; cin=1'b0;
#1000 a= 16'b0000000000011111; b=16'b000000000001100; cin=1'b0;
#1000 a= 16'b1100011000011111; b=16'b000000110001100; cin=1'b1;
#1000 a= 16'b1111111111111111; b=16'b000000000000000; cin=1'b1;
end
 
initial
$monitor("time=%.3f ps, A=%b, B=%b, Cin=%b : Sum= %b, Cout=%b\n",$realtime,a,b,cin,sum,cout);
endmodule

