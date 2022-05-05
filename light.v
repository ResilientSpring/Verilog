module(x1, x2, f);

input x2, x2;
output f;

wire ar1, ar2;

assign ar1 = x1 & ~x2;
assign ar2 = ~x1 & x2;

f = ar1 | ar2;

endmodule