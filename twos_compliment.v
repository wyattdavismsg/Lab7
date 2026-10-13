module twos_compliment(
    input[7:0] A,
    output[7:0] Y
);

    wire [7:0] carry;
    genvar i;
    
    generate    
        full_adder lsb(
            .A(~A[0]),
            .B(1),
            .Cin(0),
            .Y(Y[0]),
            .Cout(carry[0])
            );
    
        for (i = 1; i < 8; i = i + 1) begin
            full_adder adder(
                .A(~A[i]),
                .B(1'b0),
                .Cin(carry[i-1]),
                .Y(Y[i]),
                .Cout(carry[i])
                );
        end
    endgenerate
endmodule