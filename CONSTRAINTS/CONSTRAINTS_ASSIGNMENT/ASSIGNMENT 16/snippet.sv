class packet;

   rand byte a[5];

   function void display(string name="palindrome");
   $display("name=%s",name);
   $display("a=%p",a);
   endfunction

  // constraint c1{a[4]==a[0];a[3]==a[1];a[2]==a[2];}
 
   constraint c1{foreach(a[i])
                  a[i]==a[4-i];}


endclass

module top;
    packet p1;

    initial
    begin
    p1=new;
    repeat(5)
    begin
    p1.randomize();
    p1.display();
    end
    end
endmodule
