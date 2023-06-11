`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:07:08 06/11/2023 
// Design Name: 
// Module Name:    ALU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ALU(a,b,en,res,op,ack
    );
input[31:0]a,b;
input en;
input[2:0]op;
output[31:0]res;
output ack;
reg[31:0]res;
reg ack;
always@(op,en)
begin
if(en==0)
res=32'hzzzzzzzz;
else
case(op)
3'b000:res=a+b;
3'b001:res=a-b;
3'b010:res=a+1;
3'b011:res=a-1;
3'b100:res=a;
3'b101:res=~a;
3'b110:res=a/b;
3'b111:res=a&b;
endcase
ack=1'b1;
end

endmodule
