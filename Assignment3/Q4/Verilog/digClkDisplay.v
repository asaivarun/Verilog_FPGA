`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2017 12:48:00
// Design Name: 
// Module Name: digClkDisplay
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


module digitalClkDisplay(
    input               clk,
    output      [6:0]   seg,
    output      [7:0]   an,
    output              dp, 
    //Button Inputs
    input           btnCpuReset
    );
    wire [7:0] hh;
    wire [7:0] mm;
    wire [7:0] ss;
    wire [31:0] dispData;
    reg  [7:0] aen;
    reg  [27:0] pClk;
    
    initial begin
        aen = 8'b11011011;
        pClk = 28'h0;
    end
    
    //clk prescaler
    always @(posedge clk) begin
        pClk = pClk+1;
        
        if(pClk == 28'd100000000)
        begin
            pClk = 0;
        end
    end
                 
    digitalClk dc1(
        .clk((pClk==0))    ,
        .reset  (~btnCpuReset  )    ,
        .hh (hh )    ,
        .mm (mm )    ,
        .ss (ss )
        );
    
    assign dispData = {hh,4'h0,mm,4'h0,ss};
        
//    7-segment display
    seg7disp seg1 (
        .data(dispData),
        .clk(clk),
        .aen(aen),
        .seg(seg),
        .an(an),
        .dp(dp)
        ); 
endmodule
