module first_system (
    out1, out2, in1, in2
);

// Port definitions
input in1, in2;
output out1, out2;

// Description of the digital system
// Dataflow modeling

wire and_out, or_out;

assign and_out = in1 & in2;
assign or_out = in1 | in2;
assign out1 = and_out ^ or_out;
assign out2 = ~ in2;

    
endmodule