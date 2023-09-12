`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2023 23:03:28
// Design Name: 
// Module Name: pipelined_HA
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


module pipelined_HA(

    
    input A,
    input B,
    input clk,
    input rst,
    output reg S,
    output reg cout
    );
    wire S_f,cout_f;
    reg A_r,B_r;
    half_adder uut (.A(A_r),.B(B_r),.S(S_f),.cout(cout_f));
    
    always @(posedge clk,posedge rst)
     begin
     if(rst)
        begin
          A_r <= 1'b0;
          B_r <= 1'b0;
          S<=0;
         cout<=0;
        end 
      else
        begin
          A_r <= A;
          B_r <= B;
          S<=S_f;
          cout<=cout_f;
         end
      end      

endmodule
