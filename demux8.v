module demux8 (
    output [7:0] A, B, C, D,
    input [7:0] In,
    input Enable,
    input [1:0]Sel
);

    assign A = ((Sel == 2'b00 && Enable) ? In : 8'b00000000);
    assign B = ((Sel == 2'b01 && Enable) ? In : 8'b00000000);
    assign C = ((Sel == 2'b10 && Enable) ? In : 8'b00000000);
    assign D = ((Sel == 2'b11 && Enable) ? In : 8'b00000000);
    
endmodule