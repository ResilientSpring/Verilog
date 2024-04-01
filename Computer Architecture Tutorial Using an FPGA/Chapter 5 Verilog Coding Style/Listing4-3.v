/* Display each switch position on both an LED and a 7-segment digit.
   
   If a switch is up, then the corresponding LED will be lit and 
   the corresponding 7-segment digit will show a 1.
*/

module TopLevel (
    input [0:5] SW;
    output [0:5] LEDR;
    output [0:7] HEX0, HEX2, HEX3, HEX4, HEX5;
);

function [0:7] digit;
    ;
    
endfunction
    
endmodule