`timescale 1ns/1ns
`include "ex1.v"

module ex1_tb;

    reg J, K, CK, PR, CLR;
    wire Q;

    ex1 uut(J, K, CK, PR, CLR, Q);

    initial begin
            $dumpfile ("ex1.vcd");
            $dumpvars (1) ;

            PR = 1; CLR = 0; #20;
            PR = 1; CLR = 1; J = 0; K = 0; #20;
            J = 0; K = 1; #20;
            J = 1; K = 0; #20;
            J = 1; K = 1; #20;
            $finish ;
        end

        initial begin
            CK = 0;
            forever #10 CK = ~ CK;
        end
endmodule
