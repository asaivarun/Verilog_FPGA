`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2017 19:57:22
// Design Name: 
// Module Name: Interface
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


module ALUInterface(
    input clk,
    
    //Button Inputs
    input           btnC, //Center  Button
    input           btnU, //Up      Button
    input           btnD, //Down    Button
    input           btnL, //Left    Button
    input           btnR, //Right   Button
    
    output  [2:0]  led,
    
    output  [6:0]   seg,//a_to_g,
    output  [7:0]   an,
    output          dp 
    );
    
   wire [31:0] dispData;
    
   wire [7:0] a;
   wire [7:0] b;
   wire [2:0] op;
   wire [7:0] x;
   wire [7:0] y;
   reg  [23:0]val;
   reg  [1:0] sel;
   reg  [7:0] aen;
   reg  [24:0] pClk;
   
    ALU alu1(.a(a),.b(b),.op(op),.x(x),.y(y));
    seg7disp disp1( .clk(clk),.data(dispData),.aen(aen), .seg(seg),.an(an),.dp(dp));      
    
    assign dispData = btnC ? {4'ha,4'b0,y,8'b0,x}  : {1'b0,op,4'b0,a,8'b0,b};    
    assign {op,a,b} = val;
    
    assign led[2:0] = 2**sel;
    
    initial begin
        sel =1'b0;
        aen = 8'b10110011;
    end
    
    
    //clk prescaler
    
    always @(posedge clk) begin
    pClk <= pClk+1;
    end
   
    always @(posedge pClk[24])
    begin
             //Display Value Control
          
        case({btnU,btnD,btnL,btnR})
            4'b1000: val <= val+2**(sel*8);
            4'b0100: val <= val-2**(sel*8);
            4'b0010: 
                begin
                    sel <= sel-1;
                    if(sel>=2'h2)
                    begin
                        sel = 2'h2;
                    end
                end            
            4'b0001: 
                begin
                    sel <= sel+1;
                    if(sel>=2'h2)
                    begin
                        sel = 2'h0;
                    end
                end
        endcase     
        
    end 
endmodule
