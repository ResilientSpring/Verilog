module TopLevel (
    // names for pins  
    // each name represents a pin or a vector of pins
    SW,
    LEDR
);

input [0:9] SW;
output [0:9] LEDR;

// builds wires between the elements on the right side of 
// the equal sign and those on the left.
assign LEDR = SW; // Connect all switches to LEDs.
    
endmodule