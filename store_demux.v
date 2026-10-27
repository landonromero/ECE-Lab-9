module store_demux(
    input store,
    input [1:0] Sel,
    output [3:0] enable
);

    assign enable[0] = store & (Sel == 2'b00);
    assign enable[1] = store & (Sel == 2'b01);
    assign enable[2] = store & (Sel == 2'b10);
    assign enable[3] = store & (Sel == 2'b11);

endmodule