`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2017 00:14:23
// Design Name: 
// Module Name: bcdCounter_top
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


module bcdCounter_top(
    input           clk,     //Clock    
    input           btnCpuReset,     
    //7 Segment Display
    output  [6:0]   seg,//a_to_g, 
    output  [7:0]   an,           
    output          dp            
    );
   
    wire [31:0]  dispData;
    wire [7:0]   out;
    reg  [7:0]   aen;
    reg  [27:0]  pClk;
    
    assign dispData = {24'h0,out};
   
    initial
    begin
        pClk = 27'd0;
        aen = 8'b00000011;
    end
    
    always@(posedge clk)
    begin
        pClk = pClk + 27'h1;
        
        if(pClk == 27'd100000000)
            pClk = 27'd0;
    end
   
    bcdCounter bcdCnt(
        .r(~btnCpuReset),
        .clk((pClk == 0)),
        .out(out)
        );
    
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
