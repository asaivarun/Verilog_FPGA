`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2017 15:55:18
// Design Name: 
// Module Name: shiftReg4_tb
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


module shiftReg4_tb();
    reg d_in;
    reg clk;
    wire [3:0] q;
    
    shiftReg4 s1(.d_in(d_in),.clk(clk),.q(q));
    
    initial
    begin
        d_in = 1'b0;
        #5;
        d_in = 1'b1;
        #10;
        d_in = 1'b0;
        #3;
        d_in = 1'b1;
        #7;
        d_in = 1'b0;
        #9;
        d_in = 1'b1;
    end
    
    initial
    begin
        clk = 1'b0;
        forever
        begin
            clk = ~clk;
            #2;
        end
    end
endmodule
