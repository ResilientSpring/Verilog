module TopLevel_7_segment_LED (
    switches,
    HEX0
);

input [0:6] switches;
output [0:6] HEX0;

// Connect switches to HEX0 segments.
assign HEX0 = switches; 

    
endmodule