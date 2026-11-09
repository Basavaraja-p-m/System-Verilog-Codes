module snippet();

string str1,str2,str3,str4;

initial
begin
$display("the str1 is %s,the str2 is %s,the str3 is %s",str1,str2,str3);
str1="BASAVARAJ";
str2="Basavaraj";
str3="Basu";
str4="Basu";
//built in methods
$display("the str1 is %s,the str2 is %s,the str3 is %s",str1,str2,str3);
$display("the length of the str1 %s is %d,str2 %s is %d,str3 %s is %d",str1,str1.len(),str2,str2.len(),str3,str3.len());
$display("the length of str1 %s is %d",str1,str1.len());
str1.putc(2,"-");//void function(doesnt have return type)
$display("the insert letter in str1 ",str1);
$display("the return letter in str2 %s %d ",str2.getc(4),str2.getc(4));
$display("the upper case of str2 is %s",str2.toupper());
$display("the lower case of str1 is %s",str1.tolower());
str1.putc(2,"s");
$display("the insert letter in str1 %s is ",str1);
$display("the taken part from %s is %s",str1,str1.substr(0,5));
$display("the comparison of str1 and str2 is %d",str1.compare(str2));
$display("the comparison of str1 and str2 is %d",str2.compare(str1));
$display("the comparison of str3 and str4 is %d",str3.compare(str4));

//operators
str1="BASAVARAJ";
str2="BASA";
str3="Basavaraj";

if(str1==str2)
    $display("BOTH ARE IDENTICAL");
    else 
        $display("BOTH ARE NOT IDENTICAL");

if(str1<str2)
    $display("str1 is lesser than str2");
    else
        $display("str1 is greater than str2");
  
$display("the concatination of 3 string=%s",{str1,str2,str3});
$display("the replication of 3 strings=%s",{3{str1,str2,str3}});
$display("the third caracter of strings=%s",{str1[3],str2[3],str3[3]});
end
endmodule

