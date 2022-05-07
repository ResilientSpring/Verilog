// Verilog arithmetic operator

module arithmetic_operation (a, b, y1, y2, y3, y4, y5);

input [0:3] a, b;
output [0:4] y1;
output [0:5] y3;
output [0:3] y2, y4, y5;

reg [0:4] y1;
reg [0:5] y3;
reg [0:3] y2, y4, y5;

always @(a or b) 
begin

    y1 = a + b;
    y2 = a - b;
    y3 = a * b;
    
end

endmodule