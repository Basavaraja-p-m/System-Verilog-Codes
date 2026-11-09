module snippet();
int y;

function int fact(input int n);
fact=1;
for(int i=1;i<n;i++)
    fact=fact*i;
endfunction

initial
begin
y=fact(6);
$display("fact(%0d)=%0d",6,y);
end
endmodule
