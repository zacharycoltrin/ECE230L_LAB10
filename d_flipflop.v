module d_flipflop(
    input D,
    input clock,
    output reg Q,
    output Qn
);
    initial begin
        Q <= 0;
    end
    
    always @(posedge clock) begin
        Q <= D;
    end
    
    assign Qn = ~Q;

endmodule