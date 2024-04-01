/* Display each switch position on both an LED and a 7-segment digit.
   
   If a switch is up, then the corresponding LED will be lit and 
   the corresponding 7-segment digit will show a 1.
*/

module TopLevel (
    input [0:5] SW,
    output [0:5] LEDR,
    output HEX0, HEX1, HEX2, HEX3, HEX4, HEX5
);

function [0:7] digit;
    input state;
    
    begin
        
        if (state == 1) begin
            digit = 8'b11111001;
        end

        if (state == 0) begin
            digit = 8'b11000000;
        end

    end
    
endfunction

assign LEDR = SW;

assign HEX0 = digit(SW[0]);
    
endmodule