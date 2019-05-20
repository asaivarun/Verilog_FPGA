`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2017 19:45:41
// Design Name: 
// Module Name: combiCkt
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


module combiCkt(
    input [7:0] sw,
    output [7:0] led
    );
    
    assign led[0] = ~(sw[0] & sw[1]);
    assign led[1] = ~sw[2];
    assign led[2] = sw[2];
    assign led[3] = sw[3] & sw[4];
    assign led[4] = sw[5] | sw[6];
    assign led[5] = sw[3];
    assign led[6] = ((~sw[5])&sw[7]) | (sw[5]&(~sw[7]));
    assign led[7] = led[4] & sw[7];

endmodule
