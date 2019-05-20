`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2017 02:05:42
// Design Name: 
// Module Name: SIPO
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


module SIPO(
    input d,
    input clk,
    output reg [3:0] q
    );
    
    initial 
    begin
        q = 4'b0000;
    end
    
    always @ (posedge clk)
    begin
        q <= {d , q[3:1]};
    end
endmodule
