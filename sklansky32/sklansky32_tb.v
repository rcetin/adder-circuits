`timescale 1ps / 1fs

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:42:05 04/15/2018
// Design Name:   sklansky32
// Module Name:   /home/rcetin/workspace/ISE_workspace/sklansky32/sklansky32_tb.v
// Project Name:  sklansky32
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sklansky32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sklansky32_tb;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg cin;

	// Outputs
	wire [31:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	sklansky32 uut (
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
#50000 a= 32'b00001101000111110000000000011111; b=32'b000000000001100000111011101100; cin=1'b0;
#50000 a= 32'b11110001100111110000000000011111; b=32'b000001111001100000111011101100; cin=1'b0;
#50000 a= 32'b11111111111111111111111111111111; b=32'b000000000000000000000000000000; cin=1'b1;
#50000 a= 32'b11111111111111111111111111111111; b=32'b000000000000000000000000000000; cin=1'b0;
//#50 a=14; b=3; cin=0;
end
      
initial
$monitor("time=%.3f ps, A=%b, B=%b, Cin=%b : Sum= %b, Cout=%b\n",$realtime,a,b,cin,sum,cout);
endmodule