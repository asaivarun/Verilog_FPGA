`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2017 02:05:42
// Design Name: 
// Module Name: SISO
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


module SISO(
    input clk,
    input d,
    output q
    );
    reg [3:0] data;
    
    assign q = data[0];
    
    initial 
    begin
        data = 4'b0000;
    end
    
    always @ (posedge clk)
    begin
        data = {d , data[3:1]};
    end
endmodule
