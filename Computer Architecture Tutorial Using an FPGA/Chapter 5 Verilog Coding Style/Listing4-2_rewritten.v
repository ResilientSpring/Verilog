/* Display each switch position on both an LED and a 7-segment digit.
   
   If a switch is up, then the corresponding LED will be lit and 
   the corresponding 7-segment digit will show a 1.
*/

module TopLevel (
    SW, LEDR, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5
);

output HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
output [0:5] LEDR;
input [0:5] SW;

function automatic [0:7] digit(input state);
    
    begin
        if (state == 0) begin
            return 8'b11000000;
        end

        if (state == 1) begin
            return 8'b11111001;
        end
    end
    
endfunction


    
endmodule