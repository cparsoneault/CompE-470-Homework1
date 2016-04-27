`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:13:49 09/22/2013 
// Design Name: 
// Module Name:    HalfAdder_Data 
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
module HalfAdder_Data(input a, b,
							 output Sum, Cout);
assign #3 Sum = a ^ b;
assign #2 Cout = a & b;
endmodule

module tb_HalfAdder_Data;
	wire Sum, Cout;
	reg  a, b;
HalfAdder_Data Test1 (a, b, Sum, Cout);
	initial begin
		a = 1'b0; b = 1'b0;
		#5 b = 1'b1;
		#5 a = 1'b1; b = 1'b0;
		#5 b = 1'b1;
	end
endmodule
