`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.01.2017 12:05:47
// Design Name: 
// Module Name: mux41
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

                                          
module mux41(                             
    input in0,                            
    input in1,                            
    input in2,                            
    input in3,                            
    input [1:0] s,                        
    output out                            
    );                                    
    wire m0_out,m1_out;
    
    mux21 m0(.in0(in0),.in1(in1),.s(s[0]),.out(m0_out));
    mux21 m1(.in0(in2),.in1(in3),.s(s[0]),.out(m1_out));
    mux21 m(.in0(m0_out),.in1(m1_out),.s(s[1]),.out(out));
    
endmodule
