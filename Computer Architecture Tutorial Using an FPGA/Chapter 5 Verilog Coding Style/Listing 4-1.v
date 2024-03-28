module  (
    switches,
    HEXo
);

input [0:6] switches;
output [0:6] HEXo;

// Connect switches to HEXo segments.
assign HEXo = switches; 

    
endmodule