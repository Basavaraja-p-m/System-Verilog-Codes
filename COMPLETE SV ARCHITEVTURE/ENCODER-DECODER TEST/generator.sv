class generator;
   packet p1;
 //  packet p2;
   mailbox #(packet) m1;
   mailbox #(packet) m2;
   int n;

   task gen();
   p1=new;
  // p2=new;
   repeat(n)
    begin
   assert(p1.randomize());
   m1.put(p1);
   m2.put(p1);
   p1.print("FROM GEN TO DRI");
   p1.print("FROM GEN TO SB");
   #10;
   end
   endtask

   function new(mailbox #(packet) m1,m2,int n);
   this.m1=m1;
   this.m2=m2;
   this.n=n;
   endfunction


endclass
