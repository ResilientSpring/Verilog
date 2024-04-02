module TopLevel (
    input [5;0] SW,
    output [5:0] LEDR,
    output [7:0] HEX0, HEX1, HEX2
);


assign LEDR = SW;

function [7:0] digit(input [1:0] num);
    
    
    
endfunction

    
endmodule