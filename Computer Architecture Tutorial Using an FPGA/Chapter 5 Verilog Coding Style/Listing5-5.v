module TopLevel (
    input [9:0] SW;
    output [9:0] LEDR
);

wire abc;

and(abc, SW[0], SW[1], SW[2]);

or(LEDR[0], abc, SW[3]);
    
endmodule