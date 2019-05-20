
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.01.2017 12:05:47
// Design Name: 
// Module Name: and2__tb
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

module and2_tb();
    reg in1,in2;
    wire out;
    integer i;
    and2 a1(.in1(in1),.in2(in2),.out(out));
    
    initial 
    begin
        $monitor(in1,in2,out);
        for(i=0;i<4;i=i+1) 
        begin
            {in1,in2}=i; 
            #5;
        end
    end        
endmodule