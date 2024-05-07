module nextstate  


assign stateselect = {curr_state, select}

// inc code:
// mov = 0000



always @(*) begin
    case (stateselect) 
        8'b00000000 : next_state = 4'b0010; //def --> mov
        8'b0010XXXX : next_state = 4'b0000; //mov --> def
        8'b00000001 : next_state = 4'b0011; //def --> load
        8'b00110001 : next_state = 4'b0000; //load --> def
        8'b00000010 : next_state = 4'b0100; //def --> add1
        8'b01000010 : next_state = 4'b0101; //add1 --> add2
        8'b01100010 : next_state = 4'b0111; //add2 --> add3
        8'b01110010 : next_state = 4'b0000; //add3 --> def
    endcase
end

storestate Register(.clk(clk), .rst(rst), .D(curr_state), .Q(ProcessorIn))


endmodule

