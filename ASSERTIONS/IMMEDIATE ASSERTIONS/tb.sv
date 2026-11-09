program tb(inter i);
    
    initial
    repeat(10)
    begin
    i.a=$random;
    i.b=$random;
#10;
    end

    initial begin
    forever @(posedge i.clk)
    begin
       if(!i.rst)
          $assertoff;
          else
              begin
              $asserton;
    a1 : assert(i.a!==i.not1);
    a2 : assert((i.a==i.b==i.and1==0) || (i.a==i.b==i.and1==1) || ((i.a!==i.b) && (i.and1==0))); 
    a3 : assert((i.a==i.b==i.or1==0) || (i.a==i.b==i.or1==1) || ((i.a!==i.b) && (i.or1==1)));
    a4 : assert(((i.a==i.b==0) && (i.nand1==1)) || ((i.a==i.b==1) && (i.nand1==0)) || ((i.a!==i.b) && (i.nand1==1))); 
    a5 : assert(((i.a==i.b==0) && (i.nor1==1)) || ((i.a==i.b==1) && (i.nor1==0)) || ((i.a!==i.b) && (i.nor1==0))); 
    a6 : assert((i.a==i.b==i.xor1==0) || ((i.a==i.b==1) && (i.xor1==0)) || ((i.a!==i.b) && (i.xor1==1))); 
    a7 : assert((i.a==i.b==i.xnor1==1) || ((i.a==i.b==1) && (i.xnor1==1)) || ((i.a!==i.b) && (i.xnor1==0))); 
    end
    end
    end
    
endprogram



    
    
