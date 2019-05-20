`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2016 00:09:51
// Design Name: 
// Module Name: not1_tb
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


module not1_tb(

    );
    
    reg in;
    wire out;
    
    not1 a4(.in(in),.out(out));
    
    initial begin
    $monitor(in,out);
    in=0;
    #5
    in=1;
    end
endmodule
