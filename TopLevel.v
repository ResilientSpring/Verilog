module(SW, LEDR);

input [0:9] SW;
output [0:9] LEDR;

Wire5 First_set(SW[0:4], LEDR[0:4]);
Wire5 Second_set(SW[5:9], LEDR[5:9]);

endmodule

module Wire5(opcode, display);

input [0:4] opcode;
output [0:4] display;

assign display = opcode;

endmodule