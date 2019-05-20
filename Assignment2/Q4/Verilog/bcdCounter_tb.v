`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2017 17:20:01
// Design Name: 
// Module Name: bcdCounter_tb
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


module bcdCounter_tb();
    reg r;
    reg clk;
    wire [7:0] out;
    
    integer i;
    
    bcdCounter b1(.r(r),.clk(clk),.out(out));
    
    initial
    begin
        clk = 1'b0;
        forever
        begin
            clk = ~clk;
            #1;
        end
    end
    
    initial
    begin
        r=0;
        for(i=0;i<2**32;i=i+1)
        begin
            r = (i==32'h00000100);  // Reset at HEX i=100
            #1;
        end
    end
endmodule
