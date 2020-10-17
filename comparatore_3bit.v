`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:14:40 10/17/2020 
// Design Name: 
// Module Name:    comparatore_3bit 
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
module comparatore_3bit(
    input [2:0] a,
    input [2:0] b,
    input [2:0] c,
    output out
    );
	wire  w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18;
	
	/*
	nand(w1,a[2],a[1]); // a > 5 => w1 = 0
	nand(w2,b[2],b[1]); // b > 5 => w2 = 0
	nand(w3,c[2],c[1]); //c > 5 => w3 = 0

	
	or(w4,a[2],a[1]); // a < 2 => w4 = 0
	or(w5,b[2],b[1]); // b < 2 => w5 = 0
	or(w6,c[2],c[1]); // c < 2 => w6 = 0
		
	and(w7,w1,w4,w2,w5); // 2 < a < 5 && 2 < b < 5 => w7 = 1
	and(w8,w1,w4,w3,w6); // 2 < a < 5 && 2 < c < 5 => w8 = 1
	and(w9,w2,w5,w3,w6); // 2 < c < 5 && 2 < b < 5 => w9 = 1
	
	or(out,w7,w8,w9);*/
	
	
	
	
	
	and(w1,a[0],a[1],~a[2]); // a = 3 => w1 = 1
	and(w2,a[2],~a[1],~a[0]); // a = 4 => w2 = 1
	
	and(w3,b[0],b[1],~b[2]); // b = 3 => w3 = 1
	and(w4,b[2],~b[1],~b[0]); // b = 4 => w4 = 1
	
	and(w5,c[0],c[1],~c[2]); // c = 3 => w5 = 1
	and(w6,c[2],~c[1],~c[0]); // c = 4 => w6 = 1
	
	and(w7,w1,w3); // a=3 && b = 3 => w7 = 1
	and(w8,w1,w4); // a=3 && b = 4 => w8 = 1
	and(w9,w1,w5); // a=3 && c = 3 => w9 = 1
	and(w10,w1,w6); // a=3 && c = 4 => w10 = 1
	
	and(w11,w2,w3); // a=4 && b = 3 => w11 = 1
	and(w12,w2,w4); // a=4 && b = 4 => w12 = 1
	and(w13,w2,w5); // a=4 && c = 3 => w13 = 1
	and(w14,w2,w6); // a=4 && c = 4 => w14 = 1
	
	and(w15,w3,w5); // b=3 && c = 3 => w15 = 1
	and(w16,w3,w6); // b=3 && c = 4 => w16 = 1
	
	and(w17,w4,w5); // b=4 && b = 3 => w17 = 1
	and(w18,w4,w6); // b=4 && c = 4 => w18 = 1
	
	or(out,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18);
	
	
	
endmodule
