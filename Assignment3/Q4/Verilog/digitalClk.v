`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2017 22:56:13
// Design Name: 
// Module Name: digitalClk
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


module digitalClk(
    input clk,      //1Hz Clock
    input reset,
    output reg [7:0] hh,
    output reg [7:0] mm,
    output reg [7:0] ss
    );
    
    initial
    begin
        hh = 0;
        mm = 0;
        ss = 0;
    end
    
    always@(posedge clk)
    begin
        if(reset == 1)
        begin
            hh = 0;
            mm = 0;
            ss = 0;
        end
        else
        begin
            ss[3:0] = ss[3:0] + 4'h1;
            if(ss[3:0] == 4'ha)
            begin
                ss[3:0] = 4'h0;
                ss[7:4] = ss[7:4] + 4'h1;
            end
            
            if(ss == 8'h60)
            begin
                ss =8'h00;
                mm[3:0] = mm[3:0] + 4'h1;
                if(mm[3:0] == 4'ha)
                begin
                    mm[3:0] = 4'h0;
                    mm[7:4] = mm[7:4] + 4'h1;
                end
                
                if(mm == 8'h60)
                begin
                    mm = 8'h00;
                    hh[3:0] = hh[3:0] + 4'h1;
                    if(hh[3:0] == 4'ha)
                    begin
                        hh[3:0] = 4'h0;
                        hh[7:4] = hh[7:4] + 4'h1;
                    end
                    
                    if(hh == 8'h24)
                    begin
                        hh = 8'h00;
                        mm = 8'h00;
                        ss = 8'h00;
                    end
                end
            end
        end
    end
    
endmodule
