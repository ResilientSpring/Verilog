module TopLevel (
    input [9:0] SW,
    output [9:0] LEDR
);

// assign LED[0] = ~SW[0]
// assign LED[1] = ~SW[0]
// assign LED[2] = ~SW[0]
not(LEDR[0], LEDR[1], LEDR[2], SW[0]);
    
endmodule