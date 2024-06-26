module TopLevel (
    input [5:0] SW,
    output [5:0] LEDR,
    output [7:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5
);

function [7:0] digit;
    input [1:0] num;

    begin
        if (num == 2'b00) begin
            digit = 8'b11000000;
        end

        if (num == 2'b01) begin
            digit = 8'b11111001;
        end

        if (num == 2'b10) begin
            digit = 8'b10100100;
        end

        if (num == 2'b11) begin
            digit = 8'10110000;
        end

    end
    
endfunction

assign LEDR = SW;

assign HEX0 = digit(SW[1:0]);
assign HEX1 = digit(SW[3:2]);
assign HEX2 = digit(SW[5:4]);
    
endmodule