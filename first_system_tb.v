`timescale 1ns/1ps

module first_system_tb;

// Inputs
reg in1t, in2t;

// outputs
wire out1t, out2t;

// Instantiate the Unit under Test (UUT)
first_system UUT (.out1(out1t), .out2(out2t), .in1(in1t), .in2(in2t));

// Providing input to the LUT
initial begin
    // Initialize Inputs
    in1t = 0;
    in2t = 0;

    // Wait 100 ns for global reset to finish
    #100;

    // Add stimulus here
    repeat (4)
    #100 {in1t, in2t}  =  {in1t, in2t} + 1'b1;
end

// Display the result on the Tcl console (Optional)
initial begin
    $Display ("  in1  in2  out1  out2");
    $monitor("\t%b \t%b \t%b \t%b", in1t, in2t, out1t, out2t);
end


endmodule