`timescale 1ns/1ns
`include "ex2.v"

module ex2_tb;

    reg D, CK, PR, CLR;
    wire Q;

    ex2 uut(D, CK, PR, CLR, Q);

    initial begin
            $dumpfile ("ex2.vcd");
            $dumpvars (1) ;

            PR = 1; CLR = 0; #20;
            PR = 1; CLR = 1; D = 0; #20;
            D = 1; #20;
            $finish ;
        end

        initial begin
            CK = 0;
            forever #10 CK = ~ CK;
        end
endmodule
