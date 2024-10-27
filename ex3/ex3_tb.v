`timescale 1ns/1ns
`include "ex3.v"


module ex3_tb#(parameter N = 8);


    reg CK,  PR, CLR;
    reg [N-1:0] D;
    wire [N-1:0] Q;


    ex3 uut(CK, D, PR, CLR, Q);


    initial begin
        $dumpfile("ex3_tb.vcd");
        $dumpvars(0, ex3_tb);


        PR = 1; CLR = 0; #20;
        PR = 1; CLR = 1; #20;
        D = 8'd4; #20;
        D = 8'd5; #20;
        D = 8'd6; #20;
        D = 8'd7; #20;


        $display("Teste completo");
        $finish;
    end


    initial begin
            CK = 0;
            forever #10 CK = ~ CK;
        end


endmodule
