`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2017 20:09:02
// Design Name: 
// Module Name: combiCkt_tb
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


module combiCkt_tb();
    reg [7:0] sw;
    wire [7:0] led;
    
    integer i;
    
    combiCkt c1(.sw(sw),.led(led));
    
    initial
    begin
        for(i=0;i<2**8;i=i+1)
        begin
            sw = i;
            #5;
        end
    end
endmodule
