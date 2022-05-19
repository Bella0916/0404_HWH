module random(clk,clr,X);
  input clk;
  input clr;
  output X;
  reg[2:0] Q;        //3個寄存器
  assign X=Q[0];   
always@(negedge clk or posedge clr)
  if(clr)begin
    Q<=4'b1111;      //n 0000
  end
  else begin
    Q[1:0]<=Q[2:1];
    Q[2]<=Q[2]+Q[0];
end
endmodule
