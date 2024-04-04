module TopLevel (
    input [9:0] SW,
    output [9:0] LEDR
);

reg openDoor;

always @(SW[0] or SW[1] or SW[2]) begin
    
    openDoor = (SW[0] & SW[1] & SW[2]) | SW[3];

end


    
endmodule