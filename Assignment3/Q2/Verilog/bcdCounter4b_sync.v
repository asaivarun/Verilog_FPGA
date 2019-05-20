`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2017 22:20:13
// Design Name: 
// Module Name: bcdCounter4b_sync
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


module bcdCounter4b_sync(
    input r,
    input u,
    input clk,
    output reg [3:0] bcd_out
    );
    
    initial
    begin
        bcd_out = 4'h0;
    end
    
    always @ (posedge clk)
    begin
        if (r==1'h1)
        begin
            if(u == 1'h1)
                bcd_out = 4'h0;
            else
                bcd_out = 4'h9;
        end
        else
        begin
            if(u == 1'h1)
            begin
                bcd_out = bcd_out + 1;
                if(bcd_out == 4'ha)
                begin
                    bcd_out = 4'h0;
                end
            end
            else
            begin
                bcd_out = bcd_out - 1;
                if(bcd_out == 4'hf)
                begin
                    bcd_out = 4'h9;
                end              
            end
                        
        end     
    end
endmodule
