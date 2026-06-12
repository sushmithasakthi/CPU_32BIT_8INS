module CPU_tb;

reg clk;
reg reset;
reg [31:0] instruction;

wire [31:0] result;

CPU uut(
    .clk(clk),
    .reset(reset),
    .instruction(instruction),
    .result(result)
);

always #5 clk = ~clk;

initial begin

    $dumpfile("cpu.vcd");
    $dumpvars(0, CPU_tb);

    clk = 0;
    reset = 1;
    instruction = 0;

    #10;
    reset = 0;

    instruction[31:26] = 6'b000000;
    #20;

    instruction[31:26] = 6'b000001;
    #20;

    instruction[31:26] = 6'b000010;
    #20;

    instruction[31:26] = 6'b000011;
    #20;

    instruction[31:26] = 6'b000100;
    #20;

    instruction[31:26] = 6'b000101;
    #20;

    $finish;
end

initial begin
    $monitor("Time=%0t Opcode=%b Result=%d",
              $time,
              instruction[31:26],
              result);
end

endmodule
