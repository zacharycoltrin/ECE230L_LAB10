module t_flipflop(
    input T,
    input clock,
    output Q,
    output Qn
);

    jk_flipflop jkff_inst(
        .J(T),
        .K(T),
        .clock(clock),
        .Q(Q),
        .Qn(Qn)
    );

endmodule
