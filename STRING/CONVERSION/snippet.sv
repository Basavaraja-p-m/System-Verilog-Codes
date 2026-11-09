module snippet();

string s1,s2,s3,s;
int num;
initial
begin
s1="123456712345689";
s2="1234xabcd";
s3="abcdx1234";
num=1234;
$display("the conversion of s1 is %d",s1.atoi());
$display("the conversion of s1 is %b",s1.atobin());
$display("the conversion of s1 is %o",s1.atooct());
$display("the conversion of s1 is %h",s1.atohex());
s.itoa(num);
$display("the conversion of num is %s",s);
end
endmodule
