`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2017 20:02:18
// Design Name: 
// Module Name: u_d_counter
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


module u_d_counter(
    input u,
    input r,
    input clk,
    output reg [2:0] out
    );
    initial
    begin
        out = 3'b010;
    end
    
    always @ (posedge clk)
    begin
        if (r==1)
        begin
            out = 3'b010;
        end
        else
        begin
            if(u == 1)
            begin
//  UP-COUNTING SEQUENCE:
//                010 :: 2
//                011 :: 3
//                101 :: 5
//                100 :: 4
//                111 :: 7
//                001 :: 1
//                110 :: 6
//                000 :: 0
                
                case(out)
                    3'b010: out=3'b011;
                    3'b011: out=3'b101;
                    3'b101: out=3'b100;
                    3'b100: out=3'b111;
                    3'b111: out=3'b001;
                    3'b001: out=3'b110;
                    3'b110: out=3'b000;
                    3'b000: out=3'b010;
                endcase
            end
            
            else
            begin
            
//  DOWN-COUNTING SEQUENCE:
//                000 :: 0
//                110 :: 6
//                001 :: 1
//                111 :: 7
//                100 :: 4
//                101 :: 5
//                011 :: 3
//                010 :: 2
                case(out)
                    3'b010: out=3'b000;
                    3'b000: out=3'b110;
                    3'b110: out=3'b001;
                    3'b001: out=3'b111;
                    3'b111: out=3'b100;
                    3'b100: out=3'b101;
                    3'b101: out=3'b011;
                    3'b011: out=3'b010;
                endcase
            end
        end     
    end
endmodule
