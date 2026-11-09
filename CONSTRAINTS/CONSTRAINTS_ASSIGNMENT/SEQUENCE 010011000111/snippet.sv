class packet;
  rand bit seq[12];

   function void display(string name="");
   $display("name=%d s_a=%p",name,seq);
   endfunction

  constraint c_seq {
    foreach (seq[i]) 
      if (i < 2)
        seq[i] == i;       
      else if (i < 6)
        seq[i] == (i>=4);   
      else
        seq[i] == (i>=9);    
  }
endclass
module top;
   packet p1;

   initial
   begin
   p1=new;
   assert(p1.randomize());
   p1.display();
   end
endmodule

