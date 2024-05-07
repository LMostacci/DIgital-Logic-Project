module processor ()



always @(*) begin
    case (ProcessorIn)
        4'b0100 : enables = 8'b01001000; 
        

    endcase
end











endmodule