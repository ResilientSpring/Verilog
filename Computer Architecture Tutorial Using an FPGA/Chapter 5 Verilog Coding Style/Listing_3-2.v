module TopLevel (switches, LEDs);

input [0:9] switches;
output [0:9] LEDs;

Wire5 FirstSet(switches[0:4], LEDs[0:4]);

Wire5 SecondSet(switches[5:9], LEDs[5:9]);

endmodule

module Wire5(opcode, display);

intput [0:4] opcode;
output [0:4] display;

assign display = opcode;

endmodule