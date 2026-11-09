class packet #(parameter type x=byte,y=longint);
    x  a;
    y  b;

endclass

module top;
  //   packet #(bit,int)p1;
 //    packet #(.x(bit),.y(int))p1;
     packet p1;
     initial
     begin
     p1=new;
     $display("a=%d b=%d",$bits(p1.a),$bits(p1.b));
     end
endmodule
