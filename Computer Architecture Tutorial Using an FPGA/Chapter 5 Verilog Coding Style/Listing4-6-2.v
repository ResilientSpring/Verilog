module TopLevel (
    input [9:0] SW, output [9:0] LEDR, output [7:0] HEX0, HEX1, HEX2, HEX3
);

function [7:0] digit(input [2:0] num);

case (num)
    0: digit = 8'b11000000;
    1: digit = 8'b11111001;
    2: digit = 8'b10100100;
    3: digit = 8'b10110000;
    4: digit = 8'b10011001;
    5: digit = 8'b10010010;
    6: digit = 8'b10000010;
    7: digit = 8'b11111000;
endcase

    
endfunction


assign LEDR = SW; 

assign HEX0 = digit(SW[2:0]);

    
endmodule