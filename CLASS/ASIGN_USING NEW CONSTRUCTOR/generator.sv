class generator;
  
    transaction t1;
    int n;
    task gen();
    repeat(n)
    begin
    assert(t1.randomize());
    t1.display("from generator class");
    end
    endtask

    function new(transaction t3,int n);
       t1=t3;
       this.n=n;       
    endfunction
endclass
