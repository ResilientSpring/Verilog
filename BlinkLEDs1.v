module BlinkLEDs1 (
    Clock_IN, Reset, OUT_High, OUT_low
);

input Clock_IN, Reset;
output OUT_High, OUT_low;

// A counter is just a code loop that adds one to itself each time through the loop.
// Since Verilog is a hardware description language, we need to code up some of the basic hardware
// building clocks of a circuit - in the case of a counter - registers and wires.

// A 32-bit counter needs to be realized in hardware by 32 storage elements called register.
reg [31:0] blink_count;

// Declare the wires that connect from the module port to the counter.
wire clk_in, reset_in;

// Hook elements together.
assign clk_in = Clock_IN;
    
endmodule