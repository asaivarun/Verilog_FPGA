`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2017 16:35:49
// Design Name: 
// Module Name: bcdCounter
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


module bcdCounter(
    input r,
    input clk,
    output reg [7:0] bcd_out
    );
    
    initial begin
        bcd_out = 8'h00;
    end
    
    always @ (posedge clk)
    begin
        if (r==1)
            bcd_out = 8'h00;
        else
        begin
            bcd_out[3:0] = bcd_out[3:0]+1;
            
            if(bcd_out[3:0] == 4'ha)
            begin
                bcd_out[3:0] = 4'h0;
                bcd_out[7:4] = bcd_out[7:4] + 4'h1;
                if(bcd_out[7:4] == 4'ha)
                    bcd_out = 8'h00;
            end
        end     
    end
    
endmodule
