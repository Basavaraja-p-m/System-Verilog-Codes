module top();
    bit clk,rst;
    bit q;

    initial
    clk=0;
always #5 clk=~clk;
    
    initial
    begin
    rst=0;
#20 rst=1;
    end

    always_ff @(posedge clk or negedge rst)
    begin
      if(!rst)
          q<=0;
          else
              q<=1;
    end
 
    property p1;
    @(posedge clk)
    disable iff(!rst)
    rst |=> q;
    endproperty

    property p2;
    @(posedge clk)
    disable iff(!rst)
    power_up |-> ##[0:5]rst;
    endproperty

    property p3;
    @(posedge clk)
    disable iff(!rst)
    wvalid && !wready |-> ##[1:2]wready;
    endproperty

    property p4;
    @(posedge clk)
    disable iff(!rst)
    empty |-> !rd;
    endproperty

    property p5;
    @(posedge clk)
    disable iff(!rst)
    rst |-> !valid;
    endproperty

    property p5;
    @(posedge clk)
    disable iff(!rst)
    valid |-> (id != $past(id));
    endproperty

    property p6;
    @(posedge clk)
    disable iff(!rst)
    write |-> (addr % 4 == 0);
    endproperty

    property p6;
    @(posedge clk)
    disable iff(!rst)
    $rose(start) |-> done;
    endproperty

     property p6;
    @(posedge clk)
    disable iff(!rst)
    valid |-> [1:20] !$stable(sig);
    endproperty

    property p6;
    @(posedge clk)
    disable iff(!rst)
    state inside {IDLE, SETUP, ACCESS};
    endproperty

  //  a : assert property(p1);
endmodule

 

