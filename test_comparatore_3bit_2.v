`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:11:48 10/17/2020
// Design Name:   comparatore_3bit
// Module Name:   E:/university/3991/fpga/homeworks/comparatore_3bit/test_comparatore_3bit_2.v
// Project Name:  comparatore_3bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comparatore_3bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_comparatore_3bit_2;

	// Inputs
	reg [2:0] a;
	reg [2:0] b;
	reg [2:0] c;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	comparatore_3bit uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		
		a = 0;
		b = 3'b011;
		c = 3'b101;
		#100;
		
		a = 3'b001;
		b = 3'b111;
		c = 3'b101;
		#100;
		
		a = 3'b010;
		b = 3'b001;
		c = 3'b101;
		#100;
		
		a = 3'b011;
		b = 3'b011;
		c = 3'b100;
		#100;
		
		a = 3'b001;
		b = 3'b100;
		c = 3'b101;
		#100;
		
		a = 3'b001;
		b = 3'b111;
		c = 3'b001;
		#100;
		
		a = 3'b001;
		b = 3'b101;
		c = 3'b001;
		#100;
		
		a = 3'b011;
		b = 3'b101;
		c = 3'b001;
		#100;
		
		a = 3'b011;
		b = 3'b100;
		c = 3'b001;
		#100;
		
		a = 3'b011;
		b = 3'b101;
		c = 3'b100;
		#100;
		
		a = 3'b011;
		b = 3'b100;
		c = 3'b100;
		#100;
		
		
		
		

	end
      
endmodule

