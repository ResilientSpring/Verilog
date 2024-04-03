module TopLevel (
    input [9:0] SW, 
    output [9:0] LEDR
);

reg result;

assign LEDR[0] = result;

always @(SW[0], SW[1]) begin

   result = SW[0] & SW[1];

end
    
endmodule