`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2017 20:34:27
// Design Name: 
// Module Name: shiftReg4
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


module shiftReg4(
    input d_in,
    input clk,
    output [3:0] q
    );
    reg [3:0] d;
    
    assign q = d;
    
    initial 
    begin
        d = 4'b0000;
    end
    
    always @ (posedge clk)
    begin
        d <= {d_in , d[3:1]};
    end
endmodule
