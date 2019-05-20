`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.01.2017 12:24:33
// Design Name: 
// Module Name: mux41_tb
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

module mux41_tb();
    reg in0,in1,in2,in3,s[1:0];
    wire out;
    integer i;
    
    mux41 f1(.in0(in0),.in1(in1),.in2(in2),.in3(in3),.s(s),.out(out));
       
    initial 
    begin
        $monitor(in0,in1,in2,in3,s,out);
        for(i=0;i<64;i=i+1) 
        begin
            {s,in0,in1,in2,in3}=i; 
            #5;
        end
    end   
endmodule