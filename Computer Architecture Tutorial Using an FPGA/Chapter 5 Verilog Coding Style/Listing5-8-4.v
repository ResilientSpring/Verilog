module TopLevel (
    input [3:0] SW,
    output LEDR
);

reg openDoor, safeOpen;

assign LEDR = openDoor;

always @(*) begin
    
    safeOpen = SW[0] & SW[1] & SW[2];

    openDoor = safeOpen | SW[3];

end
    
endmodule