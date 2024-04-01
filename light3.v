module light (
    input X1, X2,
    output f
);

assign f = (X1 & ~X2) | (~X1 & X2);
    
endmodule