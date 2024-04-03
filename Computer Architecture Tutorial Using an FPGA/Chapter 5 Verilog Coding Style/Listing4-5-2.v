module TopLevel (
    input [5:0] SW,
    output [5:0] LEDR,
    output [7:0] HEX0, HEX1, HEX2
);


assign LEDR = SW;

function [7:0] digit(input [1:0] num);
    
    begin
        case (num)
            0: digit = 8'b11000000; 
            1: digit = 8'b11111001;
            2: digit = 8'b10100100;
            3: digit = 8'b10110000;
        //  default: 
        endcase
    end
    
endfunction

assign HEX0 = digit(SW[1:0]);
    
endmodule