module TopLevel_7_segment_LED (
    switches,
    HEXo
);

input [0:6] switches;
output [0:6] HEX0;

// Connect switches to HEXo segments.
assign HEX0 = switches; 

    
endmodule