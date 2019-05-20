`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2017 20:12:44
// Design Name: 
// Module Name: shiftReg4_top
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


module shiftReg4_top(
    input               clk,
    input       [0:0]   sw,
    output      [3:0]  led
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
            
        shiftReg4 sr4(.d_in(sw[0]),.clk((pClk==27'b0)),.q(led[3:0]));
            
endmodule
