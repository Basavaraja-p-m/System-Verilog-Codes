class packet;
   rand int cards[52];

  /* constraint c1{foreach(cards[i])
                 cards[i] inside{[0:51]};
                 unique{cards};}*/

  constraint c1{foreach(cards[i])
                cards[i] inside{[0:51]};}

  constraint c2{foreach(cards[i])
                foreach(cards[j])
                if(i!=j)
                    cards[i]!=cards[j];}

endclass

module top();
   packet p1;
    
    initial
      begin
       p1=new();
       p1.randomize();
       $display("cards=%p",p1.cards);
      end
endmodule
      

