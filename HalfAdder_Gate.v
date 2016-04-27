`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Chris Parsoneault
// 
// Create Date:    14:06:49 09/22/2013 
// Design Name: 
// Module Name:    HalfAdder_Gate 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: Sum performs Logic AND on a and b
//								Cout performs Logic XOR on a and b
//
//////////////////////////////////////////////////////////////////////////////////
module HalfAdder_Gate(input a, b,
							 output Sum, Cout);
xor #3 HAxor (Sum, a, b);
and #2 HAand (Cout, a, b);
endmodule

module tb_HalfAdder_Gate;
	wire Sum, Cout;
	reg  a, b;
HalfAdder_Gate Test1 (a, b, Sum, Cout);
	initial begin
		a = 1'b0; b = 1'b0;
		#5 b = 1'b1;
		#5 a = 1'b1; b = 1'b0;
		#5 b = 1'b1;
	end
endmodule
