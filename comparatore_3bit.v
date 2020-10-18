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
	wire  w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12;
	wire anot0 , anot1 , anot2;
	wire bnot0 , bnot1 , bnot2;
	wire cnot0 , cnot1 , cnot2;
	
	not(anot0,a[0]); // ~a[0]
	not(anot1,a[1]); // ~a[1]
	not(anot2,a[2]); // ~a[2]
	not(bnot0,b[0]); // ~b[0]
	not(bnot1,b[1]); // ~b[1]
	not(bnot2,b[2]); // ~b[2]
	not(cnot0,c[0]); // ~c[0]
	not(cnot1,c[1]); // ~c[1]
	not(cnot2,c[2]); // ~c[2]
	
	and(w1,a[0],a[1],anot2); // a = 3 => w1 = 1
	and(w2,anot0,anot1,a[2]); // a = 4 => w2 = 1
	
	and(w3,b[0],b[1],bnot2); // b = 3 => w3 = 1
	and(w4,bnot0,bnot1,b[2]); // b = 4 => w4 = 1
	
	and(w5,c[0],c[1],cnot2); // c = 3 => w5 = 1
	and(w6,cnot0,cnot1,c[2]); // c = 4 => w6 = 1
	
	or(w7,w1,w2); // a=3 || a=4 => w7 = 1
	or(w8,w3,w4); // b=3 || b=4 => w8 = 1
	or(w9,w5,w6); // c=3 || c= 4 => w9 = 1
	
	and(w10,w7,w8); // (a=3 || a=4) && (b=3 || b=4) => w10=1
	and(w11,w7,w9); // (a=3 || a=4) && (c=3 || c=4) => w11=1
	and(w12,w8,w9); // (c=3 || c=4) && (b=3 || b=4) => w12=1
	
	or(out,w10,w11,w12);
	
	
	
endmodule
