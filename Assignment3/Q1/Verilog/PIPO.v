`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2017 02:05:42
// Design Name: 
// Module Name: PIPO
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


module PIPO(
    input [3:0] d,
    input clk,
    output reg [3:0] q
    );
    
    initial 
    begin
        q = 4'b0000;
    end
    
    always @ (posedge clk)
    begin
        q <= d;
    end
endmodule
