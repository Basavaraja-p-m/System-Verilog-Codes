module STUDENT();

typedef enum{kannada=100,english=95,maths=50,science=85,social=75,hindi=90} students;

students basu,shashi,gowri,yashu;

int i;
initial
begin
$display("==========================basu marks========================");
basu=kannada;
$display("the basu marks in %s is %0d",basu,basu);

for(i=0;i<basu.num();i++)
    begin
    $display("the basu marks in %0s is %0d",basu.next(i),basu.next(i));
#10;
    end

$display("=======================shshi marks==========================");
shashi=kannada;
$display("the shashi marks in %s is %0d",shashi,shashi);

for(i=0;i<shashi.num();i++)
    begin
    $display("the shashi marks in %s is %0d",shashi.next(i),shashi.next(i));
#10;
    end

$display("=======================gowri marks==========================");
gowri=kannada;
$display("the shashi marks in %s is %0d",shashi,shashi);

for(i=0;i<gowri.num();i++)
    begin
    $display("the gowri marks in %s is %0d",gowri.next(i),gowri.next(i));
#10;
    end

    $display("=======================yashu marks==========================");
yashu=kannada;
$display("the yashu marks in %s is %0d",yashu,yashu);

for(i=0;i<yashu.num();i++)
    begin
    $display("the yashu marks in %s is %0d",yashu.next(i),yashu.next(i));
#10;
    end

end
endmodule
