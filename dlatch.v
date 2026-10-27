module dlatch(
    input Set,
    input Reset,
    output reg Q,
    output NotQ
);

    always @(Set or Reset) begin
        if (Reset)
            Q <= Set;
    end

    assign NotQ = ~Q;

endmodule