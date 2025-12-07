`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2025 11:52:18 PM
// Design Name: 
// Module Name: top_module_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_module_tb;

reg clk;
reg reset;
reg [15:0] switch;

wire [6:0] seg;
wire [3:0] anode;

wire[15:0] display_result;

top_module dut (.clk(clk), .reset(reset), .switch(switch), .seg(seg), .anode(anode));

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
//reset 
    reset = 1;
    switch = 16'b0000_0000_0000_0000;
    #10;
    reset = 0;

//Case 1
//A = [1230]
//B = [1111]
//P = [3333]
switch = 16'b0101_0101_0011_1001;
#100;
//Case 2
//A = [1122]
//B = [2211]
//P = [3366]

switch = 16'b0101_1010_1010_0101;
#100;

//Case 3
//A = [2113]
//B = [2231]
//P = [7 5 11 5]
switch = 16'b0111_1010_1101_0110;
end

endmodule
