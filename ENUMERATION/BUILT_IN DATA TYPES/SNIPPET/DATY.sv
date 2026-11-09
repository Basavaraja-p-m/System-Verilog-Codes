module DATY();

//enum {basu,shashi,yashu,gowri}FRDS;
typedef enum{basu,shashi,yashu,gowri} FRDS;

FRDS FRDS1,FRDS2;

initial
begin // block
//disable block;
$display("the number of states=%d %s",FRDS1.num(),FRDS1);
$display("the pointing position=$d %s",FRDS1);
$display("the first state=%d %s",FRDS1.first(),FRDS1);
$display("the last state=%d %s",FRDS1.last(),FRDS1.last());
$display("the name of the states=%s",FRDS1.name());
$display("the nxt state is=%d %s",FRDS1.next(2),FRDS1.next());
$display("the last state is=%d %s",FRDS1.last(),FRDS1.last());
$display("the previous state is=%d %s",FRDS1.prev(2),FRDS1.prev(3));

$display("==============for FRDS2==============");
/*FRDS2=shashi;
$display("the pointer is in=%s %d",FRDS2,FRDS2);

$display("the number of states=%d %s",FRDS2.num(),FRDS2);
$display("the pointing position=$d %s",FRDS2);
$display("the first state=%d %s",FRDS2.first(),FRDS2);
$display("the last state=%d %s",FRDS2.last(),FRDS2.last());
$display("the name of the states=%s",FRDS2.name());
$display("the nxt state is=%d %s",FRDS2.next(2),FRDS2.next());
$display("the last state is=%d %s",FRDS2.last(),FRDS2.last());
$display("the previous state is=%d %s",FRDS2.prev(2),FRDS2.prev(3));*/
end


/*enum {colours[5]} a;

initial
begin
$display("the number of states=%d %s",a.num(),a);
$display("the pointing position=$d %s",a);
$display("the first state=%d %s",a.first(),a);
$display("the last state=%d %s",a.last(),a.last());
$display("the name of the states=%s",a.name());
$display("the nxt state is=%d %s",a.next(2),a.next());
$display("the last state is=%d %s",a.last(),a.last());
$display("the previous state is=%d %s",a.prev(2),a.prev(3));
end*/

endmodule
