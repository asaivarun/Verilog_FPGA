`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2017 12:12:05
// Design Name: 
// Module Name: digClk_tb
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


module digClk_tb();
    reg r;
    reg clk;
    wire [7:0] hh;
    wire [7:0] mm;
    wire [7:0] ss;
    
//    digClk dc_1(.r(r),.clk(clk),.hh(hh),.mm(mm),.ss(ss));
    digitalClk dc_1(.reset(r),.clk(clk),.hh(hh),.mm(mm),.ss(ss));
    
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
        r=1;
        #10;
        r=0;
    end
endmodule
