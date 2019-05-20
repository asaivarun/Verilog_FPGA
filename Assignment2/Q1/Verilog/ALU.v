`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2017 11:16:24
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [7:0] a,      //Operand A
    input [7:0] b,      //Operand B
    input [2:0] op,     //Operation Selection
    output [7:0] x,     //Result
    output [7:0] y      //Carry
    );
    
    assign {y,x} = (op==0) ? (a + b)       : (                        //Addition
                   (op==1) ? (a - b)       : (                        //Subtraction
                   (op==2) ? (a * b)       : (                        //Multiplication
                   (op==3) ? {7'b0,a,1'b0} : (                  //Left Shift
                   (op==4) ? {9'b0,a[7:1]} : 16'b0))));    //Right Shift
endmodule
