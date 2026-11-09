class packet #(parameter width=8,depth=16);
   bit [width-1:0]a;
   bit [depth-1:0]b;

endclass

module top;
 //   packet #(16,32)p1;//overide by order
//    packet #(.width(32),.depth(64))p1;//overide by name
    packet p1;
    initial
    begin
    p1=new;
    $display("a=%d b=%d",$bits(p1.a),$size(p1.b));
    end
endmodule
