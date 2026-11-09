class dri;

    trans t2;
  //  gen g1;
    mailbox #(trans) m2;

    task dri();
    t2=new;
    m2.get(t2);
    t2.display();
    endtask

    function new(mailbox #(trans) m);
    m2=m;
    endfunction
endclass

