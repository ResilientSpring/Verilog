module TopLevel (
    input [9:0] SW,
    output [9:0] LEDR
);

assign LEDR[0] = SW[0] & SW[1] & SW[2] | SW[3];
    
endmodule