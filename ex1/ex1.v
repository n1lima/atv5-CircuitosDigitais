module ex1(J,K,CK,PR,CLR,Q);

    input J, K, CK, PR, CLR;
    output reg Q;

    always @(posedge CK) begin
        if (PR == 1'b1 && CLR == 1'b0)
            Q = 1'b0;
        else if (PR == 1'b0 && CLR == 1'b1)
            Q = 1'b1;
        else if (PR == 1'b0 && CLR == 1'b0)
            Q = 1'bx;
        else begin
            case({J, K})//PARA CONCATENAR
                2'b00: Q = Q;
                2'b01: Q = 1'b0;
                2'b10: Q = 1'b1;
                2'b11: Q = ~Q;
            endcase
        end
    end
endmodule