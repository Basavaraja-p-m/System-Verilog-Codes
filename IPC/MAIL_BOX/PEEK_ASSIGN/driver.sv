class driver;
    packet p2;
    mailbox #(packet) m2;
    int y;

    task dri();
    p2=new;
    repeat(y)
    begin
    m2.get(p2);
    p2.display("from the driver");
    #10;
    end
    endtask

    function new(mailbox #(packet) m2,int y);
    this.m2=m2;
    this.y=y;
    endfunction

 endclass

