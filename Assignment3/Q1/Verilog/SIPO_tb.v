`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2017 02:26:10
// Design Name: 
// Module Name: SIPO_tb
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


module SIPO_tb();
    reg d;
    reg clk;
    wire [3:0] q;
    
    integer i;
    
    SIPO sipo1(.d(d),.clk(clk),.q(q));
    
    initial
    begin
        clk = 0;
        for(i=0;i<2**5;i=i+1)
        begin
            d = i;
            #5;
        end
    end
    
    initial
    begin
        forever
        begin
            clk = ~clk;
            #2;
        end
    end
endmodule
