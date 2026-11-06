module jk_flipflop(
    input J,
    input K,
    input clock,
    output Q,
    output Qn
);
    wire D;
    assign D = (~K & Q) | (J & Qn);

    d_flipflop dff_inst(
        .D(D),
        .clock(clock),
        .Q(Q),
        .Qn(Qn)
    );

endmodule