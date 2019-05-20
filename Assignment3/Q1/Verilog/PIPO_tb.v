`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2017 02:26:10
// Design Name: 
// Module Name: PIPO_tb
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


module PIPO_tb();
    reg [3:0] d;
    reg clk;
    wire [3:0] q;
    
    integer i;
    
    PIPO s1(.d(d),.clk(clk),.q(q));
    
    initial
    begin
        for(i=0;i<2**6;i=i+1)
        begin
            d = i;
            #5;
        end
    end
    
    initial
    begin
        clk = 0;
        forever
        begin
            clk = ~clk;
            #2;
        end
    end
endmodule
