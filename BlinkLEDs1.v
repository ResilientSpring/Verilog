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
assign reset_in = Reset;
assign OUT_High = blink_count[21];
assign OUT_low = blink_count[20];

// Declaring that we want all state changes to always happen on the 
// rising edge of the input clock.
always @(posedge clk_in) begin
    if (reset_in) begin
        blink_count <= 32'b0;
    end else begin
        blink_count <= blink_count + 1;
    end
end
    
endmodule