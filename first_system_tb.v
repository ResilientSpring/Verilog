'`timescale 1ns/1ps

module first_system_tb;

// Inputs
reg in1t, int2;

// outputs
wire out1t, out2t;

// Instantiate the Unit under Test (UUT)
first_system UUT (.out1(out1t), .out2(out2t), .in1(in1t), .in2(in2t));



endmodule