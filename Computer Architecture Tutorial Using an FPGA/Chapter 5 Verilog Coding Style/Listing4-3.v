/* Display each switch position on both an LED and a 7-segment digit.
   
   If a switch is up, then the corresponding LED will be lit and 
   the corresponding 7-segment digit will show a 1.
*/

module TopLevel (
    input [0:5] SW;
    output [0:5] LEDR;
    output [0:7] HEX0, HEX2, HEX3, HEX4, HEX5;
);

function [0:7] digit(input state);

begin

    if (state == 1) begin
        digit = 8'b11111001;
    end else begin
        digit = 8'b11000000;
    end

end

// if a switch is up, then the corresponding LED will be lit.
assign LEDR = SW; 

assign HEX0 = digit(SW[0]);
assign HEX1 = digit(SW[1]);
assign HEX2 = digit(SW[2]);
assign HEX3 = digit(SW[3]);
    
endfunction


    
endmodule