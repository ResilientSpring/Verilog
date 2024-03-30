module TopLevel (
    SW,
    LEDR,
    HEX0, HEX1, HEX2, HEX3, HEX4, HEX5
);
    
    input [0:5] SW;
    output [0:5] LEDR;
    output [0:7] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;

    function automatic[0:7] digit;
        input num;

        begin
            if(num == 0) digit = 8'b11000000;  // Display 0

            if(num == 1) digit = 8'b11111001;  // Display 1


        end
        
    endfunction


endmodule