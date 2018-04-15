`timescale 1ps / 1fs
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:29:44 04/01/2018 
// Design Name: 
// Module Name:    ha 
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
module half_adder( a,b, sum, cout );
input a,b;
output sum, cout;
xor #(34.77) xor_1 (sum,a,b);
and #(2) and_1 (cout,a,b);
endmodule
