module TopLevel (switches, LEDs);

input [0:9] switches;
output [0:9] LEDs;


endmodule

module Wire5(opcode, display);

intput [0:4] opcode;
output [0:4] display;

assign display = opcode;

endmodule