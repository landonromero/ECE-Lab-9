
module top(
    input [15:0] sw,
    input btnC,
    output [15:0] led
);

    wire [7:0] data0, data1, data2, data3;
    wire [7:0] byte0, byte1, byte2, byte3;
    wire [3:0] enable;

    dlatch part1(
        .Set(sw[0]),
        .Reset(btnC),
        .Q(led[0]),
        .NotQ(led[1])
    );

    demux8 data_select (
        .A(data0),
        .B(data1),
        .C(data2),
        .D(data3),
        .In(sw[15:8]),
        .Enable(1'b1),
        .Sel(sw[7:6])
    );

    store_demux store_demux(
        .store(btnC),
        .Sel(sw[7:6]),
        .enable(enable)
    );

    dlatch8 memory0 (
        .data(data0),
        .store(enable[0]),
        .memory(byte0)
    );

    dlatch8 memory1 (
        .data(data1),
        .store(enable[1]),
        .memory(byte1)
    );

    dlatch8 memory2 (
        .data(data2),
        .store(enable[2]),
        .memory(byte2)
    );

    dlatch8 memory3 (
        .data(data3),
        .store(enable[3]),
        .memory(byte3)
    );

    mux8 output_select (
        .A(byte0),
        .B(byte1),
        .C(byte2),
        .D(byte3),
        .sel(sw[7:6]),
        .Enable(1'b1),
        .Y(led[15:8])
    );
    
    assign led[7:2] = 6'b000000;

endmodule