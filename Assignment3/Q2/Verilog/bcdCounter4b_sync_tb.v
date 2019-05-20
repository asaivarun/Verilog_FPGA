`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2017 22:29:04
// Design Name: 
// Module Name: bcdCounter4b_sync_tb
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


module bcdCounter4b_sync_tb();
    reg r;
    reg clk;
    reg u;
    wire [3:0] out;
    //    wire c;
    
    integer i;
    
    bcdCounter4b_sync bC4b_s1(.r(r),.u(u),.clk(clk),.out(out));
    
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
    begin/*
        r=0;
        u=0;
        for(i=0;i<2**12;i=i+1)
        begin
            r = (i==32'h00000010)|(i==32'h0000002d);
            #2;
            u = i[5];
        end*/
        
        r = 1'b0;
        u = 1'b0;
        #30;
        r = 1'b1;
        #30;
        r = 1'b0;
        #15
        u = 1'b1;
    end

endmodule
