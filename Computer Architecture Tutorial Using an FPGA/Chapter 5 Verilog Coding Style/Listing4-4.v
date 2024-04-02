module TopLevel (
    input [5:0] SW,
    output [5:0] LEDR,
    output [7:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5
);

function [7:0] digit;
    input [1:0] num;

    begin
        if (num == 0) begin
            digit = 8'b11000000;
        end

        if (num == 1) begin
            digit = 8'b11111001;
        end

    end
    
endfunction
    
endmodule