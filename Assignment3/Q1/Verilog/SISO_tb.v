`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2017 02:26:10
// Design Name: 
// Module Name: SISO_tb
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


module SISO_tb();
    reg d,clk;
    wire q;
    
    integer i;
    
    SISO siso1(.d(d),.clk(clk),.q(q));
    
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
