module TopLevel (
    input [9:0] SW,
    output [9:0] LEDR;
);

// LEDR[0] = SW[0] & SW[1]
and OnlyGate(LEDR[0], SW[0], SW[1]);
    
endmodule