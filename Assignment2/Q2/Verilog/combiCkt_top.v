`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2017 22:44:15
// Design Name: 
// Module Name: combiCkt_top
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


module combiCkt_top(
        input              clk,
        input       [7:0]  sw,
        output      [7:0]  led
        );
        reg [27:0] pClk;
                
         //clk prescaler
        initial
        begin
            pClk = 27'd0;
        end
        
        always@(posedge clk)
        begin
            pClk = pClk + 27'h1;
            
            if(pClk == 27'd100000000)
                pClk = 27'd0;
        end
        
        combiCkt cc1(.sw(sw[7:0]),.led(led[7:0]));
    
endmodule
