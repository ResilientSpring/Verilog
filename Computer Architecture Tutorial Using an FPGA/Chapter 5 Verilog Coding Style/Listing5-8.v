module TopLevel (
    input [9:0] SW,
    output [9:0] LEDR
);

reg openDoor;
reg safeOpen;

assign LEDR[0] = openDoor;

always @(*) begin
    
    safeOpen = SW[0] & SW[1] & SW[2];

    openDoor = safeOpen | SW[3];

end
    
endmodule