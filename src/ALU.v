module ALU(
    input [31:0] A,
    input [31:0] B,
    input [3:0] ALUOp,
    output reg [31:0] result,
    output zero
);

always @(*) begin
    case(ALUOp)
        4'b0000: result = A + B;      // ADD
        4'b0001: result = A - B;      // SUB
        4'b0010: result = A & B;      // AND
        4'b0011: result = A | B;      // OR
        4'b0100: result = A ^ B;      // XOR
        4'b0101: result = (A < B) ? 32'd1 : 32'd0; // SLT
        default: result = 32'd0;
    endcase
end

assign zero = (result == 32'd0);

endmodule
