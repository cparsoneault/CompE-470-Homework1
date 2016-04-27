`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:32:43 09/23/2013 
// Design Name: 
// Module Name:    Problem5C 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: c1 is the signle input
//								a, b, c, T1, e, T2, and c2 are all internal wires
//								c3 is the output
//								This module inputs c1 into a two-input XOR gate
//								with itself, however the signal is passed through
//								4 inverters in one of the branches.
//								After the first XOR, the result, c2, is also sent
//								through a two-input XOR gate, this time the second
//								branch only has 2 inverters.
//
//////////////////////////////////////////////////////////////////////////////////
module Problem5C(input c1,
					  output c3);
wire a, b, c, T1, e, T2, c2;
	not #5 N1 (a, c1),
			 N2 (b, a),
			 N3 (c, b),
			 N4 (T1, c);
	xor #10 XOR1 (c2, c1, T1);
	not #5 N5 (e, c2),
			 N6 (T2, e);
	xor #10 XORtwo (c3, c2, T2);

endmodule
module tb_Problem5C;
	reg c1;
	wire  c3;
Problem5C Test1 (c1, c3);
	initial begin
		c1 = 1'b0;
		#10 c1 = 1'b1;
		#40 c1 = 1'b0;
		#40 c1 = 1'b1;
	end
endmodule
