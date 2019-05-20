`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2017 10:41:26
// Design Name: 
// Module Name: u_d_counter_tb
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


module u_d_counter_tb(

    );
    reg r;
    reg clk;
    reg u;
    wire [2:0] out;
    
    
    u_d_counter udc1(.r(r),.u(u),.clk(clk),.out(out));
    
    initial
    begin
        clk = 1'b0;
        forever
        begin
            clk = ~clk;
            #1;
        end
    end
    
    initial
    begin
        r = 1'b0;
        u = 1'b0;
        #30;
        r = 1'b1;
        #10;
        r = 1'b0;
        #30;
        u = 1'b1;
        #30
        u = 1'b0;
    end
endmodule
