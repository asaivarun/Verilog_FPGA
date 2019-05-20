
module xor2_tb();
    reg in1,in2;
    wire out;
    integer i;
    xor2 a1(.in1(in1),.in2(in2),.out(out));
    
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