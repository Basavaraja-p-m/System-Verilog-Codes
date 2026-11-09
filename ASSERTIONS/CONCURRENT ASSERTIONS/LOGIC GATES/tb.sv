program tb(inter i);
    
    initial
    repeat(10)
    begin
    i.a=$random;
    i.b=$random;
    #10;
    end
    
    sequence snot1;
    i.a!=i.not1;
    endsequence

    sequence sand1;
    i.a && i.b && i.and1;
    endsequence

    sequence sand2;
    !i.a && !i.b && !i.and1;
    endsequence

    sequence sand3;
    ((i.a!=i.b) && (!i.and1));
    endsequence

    sequence sor1;
    ((i.a && i.b && i.or1) or (!i.a && !i.b && !i.or1) or ((i.a!=i.b) && (i.or1)));
    endsequence

    sequence snand1;
    ((i.a && i.b && !i.nand1) or (!i.a && !i.b && i.nand1) or ((i.a!=i.b) && (i.nand1)));
    endsequence

    sequence snor1;
    ((i.a && i.b && !i.nor1) or (!i.a && !i.b && i.nor1) or ((i.a!=i.b) && (!i.nor1)));
    endsequence

    sequence sxor1;
    ((i.a && i.b && !i.xor1) or (!i.a && !i.b && !i.xor1) or ((i.a!=i.b) && (i.xor1)));
    endsequence

    sequence sxnor1;
    ((i.a && i.b && i.xnor1) or (!i.a && !i.b && i.xnor1) or ((i.a!=i.b) && (!i.xnor1)));
    endsequence

    property pnot1;
    @(negedge i.clk)
    disable iff(!i.rst)
    snot1;
    endproperty

    property pand1;
    @(negedge i.clk)
    disable iff(!i.rst)
    (sand1 or sand2 or sand3);
    endproperty

    property por1;
    @(negedge i.clk)
    if(i.rst)
    sor1;
    endproperty

    property  pnand1;
    @(negedge i.clk)
    disable iff(!i.rst)
    snand1;
    endproperty

    property pnor1;
    @(negedge i.clk)
    disable iff(!i.rst)
    snor1;
    endproperty

    property pxor1;
    @(negedge i.clk)
    disable iff(!i.rst)
    sxor1;
    endproperty

    property pxnor1;
    @(negedge i.clk)
    disable iff(!i.rst)
    sxnor1;
    endproperty

    apnot1 : assert property(pnot1);
    apand1 : assert property(pand1);
    apor1 : assert property(por1);
    apnand1 : assert property(pnand1);
    apnor1 : assert property(pnor1);
    apxor1 : assert property(pxor1);
    apxnor1 : assert property(pxnor1);

endprogram


    









    
    
