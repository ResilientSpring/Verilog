module  temi_u7 (d , select , y0 , y1) ; 
input       d , select ; 
output       y0 , y1 ; 
wire            y0 , y1 ; 
 
assign       y0= (！select )   & d ;
assign       y1= select    & d ;
endmodule