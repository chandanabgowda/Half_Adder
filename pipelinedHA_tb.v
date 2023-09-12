`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2023 23:18:09
// Design Name: 
// Module Name: pipelinedHA_tb
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


module pipelinedHA_tb();

reg A,B;
wire S,cout;
reg clk,rst;
pipelined_HA HA (.A(A),.B(B),.clk(clk),.rst(rst),.S(S),.cout(cout));
initial
begin
clk=1'b0;
forever #5 clk =~clk;
end
initial
begin
rst=1;
#50 rst=0;
#500 $finish;
end
initial
 begin
   A = 1'b0;
   B = 1'b0;
#500 $finish;
end
always
begin
#10 A=~A;
end
always
begin
#20 B=~B;
end
endmodule
