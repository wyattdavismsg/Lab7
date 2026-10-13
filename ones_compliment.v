module ones_compliment(

    input [3:0]A, [3:0]B, [3:0]AplusB,
    output [3:0]Y
    
    );

wire around;
wire [3:0] carry_1;
wire [3:0] carry_2;
    
    full_adder fa0_1 (
        .A(A[0]),
        .B(B[0]),
        .Cin(0),
        .Y(AplusB[0]),
        .Cout(carry_1[0])
    );
    full_adder fa1_1 (
        .A(A[1]),
        .B(B[1]),
        .Cin(carry_1[0]),
        .Y(AplusB[1]),
        .Cout(carry_1[1])
    );
    full_adder fa2_1 (
        .A(A[2]),
        .B(B[2]),
        .Cin(carry_1[1]),
        .Y(AplusB[2]),
        .Cout(carry_1[2])
    );
    full_adder fa3_1 (
        .A(A[3]),
        .B(B[3]),
        .Cin(carry_1[2]),
        .Y(AplusB[3]),
        .Cout(carry_1[3])
    );
    
    assign around = carry_1[3];
    
    full_adder fa0_2 (
        .A(AplusB[0]),
        .B(0),
        .Cin(around),
        .Y(Y[0]),
        .Cout(carry_2[0])
    );
    full_adder fa1_2 (
        .A(AplusB[1]),
        .B(0),
        .Cin(carry_2[0]),
        .Y(Y[1]),
        .Cout(carry_2[1])
    );
    full_adder fa2_2 (
        .A(AplusB[2]),
        .B(0),
        .Cin(carry_2[1]),
        .Y(Y[2]),
        .Cout(carry_2[2])
    );
    full_adder fa3_2 (
        .A(AplusB[3]),
        .B(0),
        .Cin(carry_2[2]),
        .Y(Y[3]),
        .Cout(carry_2[3])
    );
    
    endmodule
