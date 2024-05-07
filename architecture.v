module architecture (clk, rst, data, select);


input [3:0] select; // for now just selecting ALU  
input clk, rst;
input [7:0] data;

wire [1:0] OutToggle;
wire [1:0] InToggle;

wire [7:0] Reg0, Reg1;

assign data[0] = Reg0;
assign data[1] = Reg1;

processor pro()




endmodule

/*

module HexInARow (w, 7segOut, rst, clk);

input w, clk, rst;
output[6:0] 7segOut;
wire [3:0] curr_state, nxt_state, out;
output  z;

//compute next 

next_state NxtState(.w(w), .rst(rst), .state(curr_state), .next_state(nxt_state));

// store

storestate Register(.clk(clk), .rst(rst), .D(curr_state), .Q(out));

// output
state_output zoutput(.statenum(out), .stateOut(z));
HEXDecoder Output(.BinaryIn(out), .HexOut(7segOut));

endmodule


*/