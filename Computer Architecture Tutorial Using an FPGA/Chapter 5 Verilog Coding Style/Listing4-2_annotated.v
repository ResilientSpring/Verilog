module TopLevel (
    SW,
    LEDR,
    HEX0, HEX1, HEX2, HEX3, HEX4, HEX5
);
    
    input [0:5] SW;
    output [0:5] LEDR;

    // This code only uses six switches because there are only six 7-segment displays on the DE10-Lite.
    output [0:7] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;

    // function "digit" will produce an 8-bit output vector.
    function automatic [0:7] digit;  // The "automatic" keyword is optional here, but a good practice if a simulation were to be run.
        input num;  // The input to this function is only one bit, named "num".

        begin

            

            if(num == 0) digit = 8'b11000000;  // Display 0

            if(num == 1) digit = 8'b11111001;  // Display 1

        end
        
    endfunction

    assign LEDR = SW;  // This wires each of the six switches to a corresponding LED.
    assign HEX0 = digit(SW[0]);
    assign HEX1 = digit(SW[1]);
    assign HEX2 = digit(SW[2]);
    assign HEX3 = digit(SW[3]);
    assign HEX4 = digit(SW[4]);
    assign HEX5 = digit(SW[5]);
    // Actually, each switch is one bit that is translated by the "digit" function into an 8-bit
    // vector that is "wired" to the eight segments of a HEX display.

endmodule