module snippet();

int x,y,z,p,q,r,s;
function int logicol(input int a,b,output int x,y,z,p,q,r,s);
x=a & b ;
$display("a=%d b=%d x=%0b",a,b,x);
y=~(a & b);
$display("a=%d b=%d y=%0b",a,b,y);
z=a | b;
$display("a=%d b=%d z=%0b",a,b,z);
p=~(a | b);
$display("a=%d b=%d p=%0b",a,b,p);
q=(a ^ b);
$display("a=%d b=%d q=%0b",a,b,q);
r=~(a ^ b) ;
$display("a=%d b=%d r=%0b",a,b,r);
s=~a;
$display("a=%d b=%d s=%0b",a,b,s);
endfunction

initial
begin
logicol(4,3,x,y,z,p,q,r,s);
/*logicol(1,0,y);
logicol(1,0,z);
logicol(1,0,p);
logicol(1,0,q);
logicol(1,0,r);
logicol(1,0,s);*/
end

endmodule
