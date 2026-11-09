class gen;
 
    trans t1;
    mailbox #(trans) m1;

    task gen();
    t1=new;
    t1.randomize();
    m1.put(t1);
    t1.display();
    endtask

    function new(mailbox #(trans) m);
    m1=m;
    endfunction
    
endclass
