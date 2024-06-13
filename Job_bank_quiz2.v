1: module  temi_u7 (d , select , y0 , y1) ; 
2: input       d , select ; 
3: output       y0 , y1 ; 
4: wire            y0 , y1 ; 
5: 
6: assign       y0= (！select )   & d ;
7: assign       y1= select    & d ;
8: endmodule