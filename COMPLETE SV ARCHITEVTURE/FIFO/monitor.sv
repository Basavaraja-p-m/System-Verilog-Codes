class monitor;
   packet p5;
   mailbox #(packet) m6;
   virtual inter i;
   event e3,e4;

    function new(mailbox #(packet) m6,virtual inter i,event e3,e4);
    this.m6=m6;
    this.i=i;
    this.e3=e3;
    this.e4=e4;
    endfunction

   task mon();
   p5=new;
   forever begin
   @(e3)
  // @(i.data_out)
   p5.data_out=i.data_out;
   p5.wr=i.wr;
   p5.rd=i.rd;
   p5.empty=i.empty;
   p5.full=i.full;

   m6.put(p5);
   p5.print("FROM MONITOR");
   ->e4;
   end
   endtask
endclass
