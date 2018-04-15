`timescale 1ps / 1fs

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:11:40 04/01/2018
// Design Name:   carry_skip_16bit
// Module Name:   /home/rcetin/workspace/ISE_workspace/cska32/cska32_tb.v
// Project Name:  cska32
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: carry_skip_16bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cska32_tb;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg cin;

	// Outputs
	wire [31:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	carry_skip_32bit uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
$display($time, " << Starting the Simulation >>");
     a=0; b=0; cin=0;
#50000 a= 32'b00000000000111110000000000011111; b=32'b000000000001100000000000001100; cin=1'b0;
#50000 a= 32'b11111111111111111111111111111111; b=32'b000000000000000000000000000000; cin=1'b1;
#50000 a= 32'b11111111111111111111111111111111; b=32'b000000000000000000000000000000; cin=1'b0;
end
      
initial
$monitor("time=%.3f ps, A=%b, B=%b, Cin=%b : Sum= %b, Cout=%b\n",$realtime,a,b,cin,sum,cout);
endmodule
