module TopLevel (
    input [9:0] SW,
    output [9:0] LEDR
);

// assign LED[0] and LED[1] and LED[2] = ~SW[0]
not(LEDR[0], LEDR[1], LEDR[2], SW[0]);
    
endmodule