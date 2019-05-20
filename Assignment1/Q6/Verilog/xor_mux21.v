`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.01.2017 12:05:47
// Design Name: 
// Module Name: xor_mux21
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module xor_mux21(
    input in1,
    input in2,
    output out
    );
    
    mux21 x1(.in0(in1),.in1(~in1),.s(in2),.out(out));
    
endmodule
