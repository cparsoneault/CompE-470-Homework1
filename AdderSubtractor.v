`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:12:49 09/23/2013 
// Design Name: 
// Module Name:    AdderSubtractor 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: a and b are input signals
//								Sum takes a and b and adds them together
//								Sub subtracts b from a
//								Sum and Sub are 5 bits to catch overflow
//
//////////////////////////////////////////////////////////////////////////////////
module AdderSubtractor(input [3:0] a, b,
							  output [4:0] Sum, Sub);
assign Sum = a + b;
assign Sub = a - b;

endmodule
module tb_AdderSubtractor;
	wire [4:0] Sum, Sub;
	reg [3:0] a, b;
AdderSubtractor Test1 (a, b, Sum, Sub);
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
