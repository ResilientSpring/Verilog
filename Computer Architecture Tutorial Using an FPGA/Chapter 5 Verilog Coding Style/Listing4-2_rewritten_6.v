/* Display each switch position on both an LED and a 7-segment digit.
   
   If a switch is up, then the corresponding LED will be lit and 
   the corresponding 7-segment digit will show a 1.
*/

module TopLevel (
    input [0:5] SW,
    output [0:5] LEDR,
    output [0:7] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5
);

function [0:7] digit(input state);
    
    begin
        
        if (state == 1) begin
            digit = 8'b10011111;
        end

        if (state == 0) begin
            digit = 8'b00000011;
        end

    end
    
endfunction

assign LEDR = SW;

assign HEX0 = digit(SW[0]);
assign HEX1 = digit(SW[1]);
assign HEX2 = digit(SW[2]);
assign HEX3 = digit(SW[3]);
assign HEX4 = digit(SW[4]);
assign HEX5 = digit(SW[5]);
    
endmodule