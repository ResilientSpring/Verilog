module TopLevel (
    input [9:0] SW,
    output [9:0] LEDR
);

// "not" and "buf" gates can only have one input, so Verilog permits them to have multiple 
// outputs in their parameter list.
not(LEDR[0], LEDR[1], LEDR[2], SW[0]);
    
endmodule