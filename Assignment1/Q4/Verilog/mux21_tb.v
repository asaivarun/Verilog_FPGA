`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2016 20:37:20
// Design Name: 
// Module Name: mux21_tb
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


module mux21_tb();
    reg in0,in1,s;
    wire out;
    integer i;
    
    mux21 f1(.in0(in0),.in1(in1),.s(s),.out(out));
       
    initial 
    begin
        $monitor(in0,in1,s,out);
        for(i=0;i<8;i=i+1) 
        begin
            {s,in0,in1}=i;
            #5;
        end
    end   
endmodule