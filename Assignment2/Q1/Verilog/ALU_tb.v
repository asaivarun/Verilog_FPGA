`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2017 11:30:49
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb();
    reg [7:0] a;
    reg [7:0] b;
    reg [2:0] op;
    wire [7:0]x;
    wire [7:0]y;
    
    integer i;
    
    ALU a1(.a(a),.b(b),.op(op),.x(x),.y(y));
    
    initial
    begin
        for(i=0;i<2**19;i=i+1)
        begin
            {op,a,b} = i;
            #5;
        end
    end
endmodule
