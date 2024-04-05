module TopLevel (
    input [9:0] SW,
    output [9:0] LEDR
);

wire  notA, notB, AB, BA;

not(notA, SW[0]);  // ~SW[0]
not(notB, SW[1]);  // ~SW[1]
and(AB, notA, SW[1]);
and(BA, notB, SW[0]);
or(LEDR[0], AB, BA);
xor(LEDR[1], SW[0], SW[1]);
    
endmodule