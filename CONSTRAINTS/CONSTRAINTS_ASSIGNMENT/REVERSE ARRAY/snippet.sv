class packet;
    rand byte unsigned s_a[10];
    rand byte unsigned s_b[10];
   
    function void display(string name="");
    $display("originol=%p",s_a);
    $display("reversed=%p",s_b);
    endfunction
    
    extern constraint c1;
    extern constraint c2;
    
endclass

    constraint packet::c1{ foreach(s_a[i])
                            s_a[i]==i+1;}

    constraint packet::c2{ foreach(s_b[i])
                            s_b[i]==s_a[9-i];}
                              

    module top;
    packet p1;

    initial
    begin
    p1=new;
    assert(p1.randomize());
    p1.display();
    end
endmodule
