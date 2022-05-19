module random_tb;
  reg clk_tb,clr_tb;
  wire X_tb;
  random random_1(.clk(clk_tb),.clr(clr_tb),.X(X_tb));
initial begin
  clk_tb=0;
  clr_tb=1;
end
always begin
  #5 clk_tb=~clk_tb;
end
initial begin
  #5 clr_tb=1;
  #5 clr_tb=0;
  #140 $finish;
end
initial begin
  $dumpfile("random.vcd");
  $dumpvars(0,random_tb);
end
endmodule