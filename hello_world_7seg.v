module hello_world_single_7seg (
  input [3:0] digit,
  output reg [6:0] display,
  output wire [7:0] an,
  output wire dp
);

parameter zero= 7'b0000001;
parameter one= 7'b1001000;
parameter two= 7'b0110000;
parameter three= 7'b1110001;
parameter four= 7'b1110001;
parameter five= 7'b0000001;
parameter six= 7'b0000110;
parameter seven= 7'b0000001;
parameter eight= 7'b1111010;
parameter nine= 7'b1110001;
parameter A= 7'b0000001;
parameter B= 7'b0000000;
parameter C= 7'b0110001;
parameter D= 7'b0000001;
parameter E = 7'b0110000;
parameter F = 7'b0111000;
assign an=8'b11111110;
assign dp=1;
always @(digit)
case (digit)
 0: display=zero;
 1: display=one;
 2: display=two;
 3: display=three;
 4: display=four;
 5: display=five;
 6: display=six;
 7: display=seven;
 8: display=eight;
 9: display=nine;
 10: display=A; 
 11: display=B;
 12: display=C;
 13:display=D;
 14: display=E;
 15:display=F;
 endcase 
 endmodule