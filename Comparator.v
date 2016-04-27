`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Chris Parsoneault
// 
// Create Date:    11:44:51 09/22/2013 
// Design Name: 
// Module Name:    Comparator 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: a and b are 4 bit inputs
//			AND, OR, NOR, and XNOR all perform the corresponding Logic on a and b
//			NOTA and NOTB take a and b and return the 4-bit inverse of each
//			GREATER and LESS perform a > b and a < b respectively
//			GREATE and LESSE perform a >= b and a <= b respectively
//Note: in the first assign block I had to remove some whitespace to make the print
//come out without cutting off the end and endmodule lines
//////////////////////////////////////////////////////////////////////////////////
module Comparator(input [3:0]a, b,
						output AND, OR, NOR, XNOR,
						output [3:0]NOTA, NOTB, 
						output GREATER, LESS,
								 GREATE, LESSE);
assign AND = a & b, OR = a | b,
		 NOR = ~( a | b ), XNOR = a ~^ b,
		 NOTA = ~a, NOTB = ~b,
		 GREATER = (a > b), LESS = (a < b),
		 GREATE = (a >= b), LESSE = (a <= b);
endmodule
module tb_Comparator;
	wire AND, OR, NOR, XNOR;
	wire [3:0]NOTA, NOTB;
	wire GREATER, LESS,
		  GREATE, LESSE;
	reg  [3:0] a, b;
Comparator Test1 (a, b, AND, OR, NOR, XNOR,
						NOTA, NOTB, GREATER, LESS,
						GREATE, LESSE);
	initial begin
		a = 4'b0000; b = 4'b0000;
		#5 a = 4'b1111; b = 4'b1111;
		#5 a = 4'b1110; b = 4'b0111;
		#5 a = 4'b1010; b = 4'b0101;
		#5 a = 4'b0011; b = 4'b1100;
		#5 a = 4'b1010; b = 4'b0110;
		#5 a = 4'b1111; b = 4'b0001;
		#5 a = 4'b0000; b = 4'b1111;
		#5 a = 4'b0000; b = 4'b0001;
end
endmodule 