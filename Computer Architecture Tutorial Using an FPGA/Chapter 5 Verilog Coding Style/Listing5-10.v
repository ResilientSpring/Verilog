module TopLevel (
    input [9:0] SW,
    output [9:0] LEDR
);

assign LEDR[0] = ~SW[0] & SW[1] | ~SW[1] & SW[0];


assign LEDR[1] = SW[0] ^ SW[1];  // ^ is the logic operator for exclusive or.
    
endmodule