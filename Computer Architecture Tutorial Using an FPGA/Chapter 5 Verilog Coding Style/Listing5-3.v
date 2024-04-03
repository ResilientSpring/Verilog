module TopLevel (
    input [9:0] SW,
    output [9:0] LEDR,
);

assign LEDR[0] = SW[0] & SW[1];  // Dataflow AND gate.
    
endmodule