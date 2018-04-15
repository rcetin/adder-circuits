`timescale 1ps / 1fs

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:30:24 04/01/2018
// Design Name:   half_adder
// Module Name:   /home/rcetin/workspace/ISE_workspace/ha/ha_tb.v
// Project Name:  ha
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: half_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ha_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	half_adder uut (
		.a(a), 
		.b(b), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
	$display($time, " << Starting the Simulation >>");
     a=0; b=0; 
		// Initialize Inputs
		#200 a = 0;		b = 0;
		#200 a = 1; b = 0;
		#200 a = 1; b = 1;      
		// Add stimulus here
	end
      
		initial
		$monitor("time=%.3f ns, a=%b, b=%b, Sum= %b, Cout=%b\n",$realtime,a,b,sum,cout);

endmodule

