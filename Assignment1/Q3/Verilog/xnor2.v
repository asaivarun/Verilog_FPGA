`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.01.2017 11:33:55
// Design Name: 
// Module Name: xnor2
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


module xnor2(
    input in1,
    input in2,
    output out
    );
    
    assign out = (in1|(~in2)) & ((~in1)|in2);
  
endmodule
