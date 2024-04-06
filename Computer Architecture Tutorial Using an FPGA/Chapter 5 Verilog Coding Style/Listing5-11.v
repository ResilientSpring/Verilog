module TopLevel (
    input [1:0] SW,
    output [1:0] LEDR
);

reg result, outcome;

always @(*) begin

    result = LEDR[0] = ~SW[0] & SW[1] | ~SW[1] & SW[0];

    outcome = SW[0] ^ SW[1];

end

assign LEDR[0] = result;

assign LEDR[1] = outcome;
    
endmodule