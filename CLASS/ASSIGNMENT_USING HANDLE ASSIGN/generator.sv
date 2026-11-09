class generator;
    transaction t1;
    int n;

    task gen();
    t1=new;
    repeat(n)
    begin
    assert(t1.randomize());
    t1.display("from generator class");
    #10;
    end
    endtask

    function new(int n);
    this.n=n;
    endfunction

endclass
