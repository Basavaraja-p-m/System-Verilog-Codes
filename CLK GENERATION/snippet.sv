module snippet();

reg clk;
//using always and forever loop

initial
clk=0;
always #5 clk=~clk;forever #5 clk=~clk;

initial
#100 $stop;

//using for loop

initial
begin
clk=0;
for(i=0;i<1;i=i)
    #5 clk=~clk;

//using while loop

initial
begin
clk=0;
while(1)
    begin
   #5 clk=~clk;
    end

//using do while loop

    do
      begin
      #5 clk=~clk;
      i=i;
      end
      while(i<5);
endmodule
