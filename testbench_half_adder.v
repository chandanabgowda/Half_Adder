`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2023 08:50:51
// Design Name: 
// Module Name: testbench_half_adder
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


module testbench_half_adder();
reg a,b;
wire carry,sum;
half_adder uut(.a(a), .b(b), .sum(sum), .carry(carry));

initial
begin

    a = 1'b0; b = 1'b0;
    #500 $finish;
    
    end
 always
  begin
  #25 a = ~a;
  end
   always
  begin
  #50 b = ~b;
  end
    
endmodule
