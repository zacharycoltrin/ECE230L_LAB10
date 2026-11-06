module top(
    input [3:0] sw,
    input btnC,
    output [5:0] led
);

    d_flipflop d_ff_inst(
        .D(sw[0]),
        .clock(btnC),
        .Q(led[0]),
        .Qn(led[1])
    );

    jk_flipflop jk_ff_inst(
        .J(sw[1]),
        .K(sw[2]),
        .clock(btnC),
        .Q(led[2]),
        .Qn(led[3])
    );

    t_flipflop t_ff_inst(
        .T(sw[3]),
        .clock(btnC),
        .Q(led[4]),
        .Qn(led[5])
    );

endmodule