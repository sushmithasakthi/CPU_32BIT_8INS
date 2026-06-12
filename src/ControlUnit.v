module ControlUnit(
    input [5:0] opcode,

    output reg regWrite,
    output reg [3:0] ALUOp,
    output reg memRead,
    output reg memWrite,
    output reg branch,
    output reg jump
);

always @(*) begin

    regWrite = 0;
    ALUOp = 4'b0000;
    memRead = 0;
    memWrite = 0;
    branch = 0;
    jump = 0;

    case(opcode)

        6'b000000: begin
            regWrite = 1;
            ALUOp = 4'b0000;
        end

        6'b000001: begin
            regWrite = 1;
            ALUOp = 4'b0001;
        end

        6'b000010: begin
            regWrite = 1;
            ALUOp = 4'b0010;
        end

        6'b000011: begin
            regWrite = 1;
            ALUOp = 4'b0011;
        end

        6'b000100: begin
            regWrite = 1;
            ALUOp = 4'b0100;
        end

        6'b000101: begin
            regWrite = 1;
            ALUOp = 4'b0101;
        end

        default: begin
            regWrite = 0;
            ALUOp = 4'b0000;
        end

    endcase
end

endmodule
