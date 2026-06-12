module CPU (
    input clk,
    input reset,
    input [31:0] instruction,
    output [31:0] result
);

wire [31:0] PC, readData1, readData2, ALUResult;
wire [3:0] ALUOp;
wire regWrite, memRead, memWrite, branch, jump;
wire zero;

ControlUnit CU (
    .opcode(instruction[31:26]),
    .regWrite(regWrite),
    .ALUOp(ALUOp),
    .memRead(memRead),
    .memWrite(memWrite),
    .branch(branch),
    .jump(jump)
);

RegisterFile RF (
    .clk(clk),
    .reset(reset),
    .regWrite(regWrite),
    .readReg1(instruction[25:21]),
    .readReg2(instruction[20:16]),
    .writeReg(instruction[15:11]),
    .writeData(ALUResult),
    .readData1(readData1),
    .readData2(readData2)
);

ALU alu (
    .A(readData1),
    .B(readData2),
    .ALUOp(ALUOp),
    .result(ALUResult),
    .zero(zero)
);

PC pc (
    .clk(clk),
    .reset(reset),
    .nextPC(PC + 4),
    .PC(PC)
);

assign result = ALUResult;

endmodule
