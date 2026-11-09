module dut(input clk,rst);

   reg a,b;

   initial
   repeat(10)
   wait(rst==1)
   begin
   {a,b}=$random;#10;
   end

   property p1;
   @(posedge clk)
   disable iff(!rst)
   b##2 a;
   endproperty

   property p2;
   @(posedge clk)
   disable iff(!rst)
    $rose(a);
   endproperty
   
   property p3;
   @(posedge clk)
   disable iff(!rst)
    $fell(b);
   endproperty

   property p4;
   @(posedge clk)
   disable iff(!rst)
    $stable(a);
   endproperty

   property p5;
   @(posedge clk)
   disable iff(!rst)
   $changed(b);
   endproperty

   property p6;
   @(posedge clk)
   disable iff(!rst)
   $past(a,2)==0;
   endproperty

   property p7;
   @(posedge clk)
   disable iff(!rst)
   $rose(a) |=> ##4 $fell(b);
   endproperty

   property p8;
   @(posedge clk)
   disable iff(!rst)
    // not(a&&b);
     not(a||b);
   endproperty

   property p9;
   @(posedge clk)
   disable iff(!rst)
   $isunknown(a);
   endproperty

   property p10(x,y);
   @(posedge clk)
   disable iff(!rst)
   $rose(x)|->$rose(y);
   endproperty

   property p11;
   @(posedge clk)
   disable iff(!rst)
  // $onehot(a);
   $onehot0(a);
   endproperty

   property p12;
   @(posedge clk)
   $countones(a);
   endproperty

   property p13;
   @(posedge clk)
   first_match(!a ##[1:3] b);
   endproperty

 /*  property p14;
   @(posedge clk)
   !a |-> ##1 (b within [*1:3]);
   endproperty*/
   
  

   aa : assert property(p1)
        $display("PASSED");
        else
            $display("FAILED");
   bb : assert property(p2);
   cc : assert property(p3);
   dd : assert property(p4);
   ee : assert property(p5);
   ff : assert property(p6);
   gg : assert property(p7);
   hh : assert property(p8);
   ii : assert property(p9);
   
   jj : assert property(p10(a,b)); //generic way

   kk : assert property(p11);
   ll : assert property(p12)
        $info("pass");
        else
            $info("fail");
   mm : assert property(p13);
  // nn : assert property(p14);





endmodule




   
            
           
