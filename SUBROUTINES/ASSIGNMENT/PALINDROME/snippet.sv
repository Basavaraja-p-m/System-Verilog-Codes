/*module snippet;

    function int pal(input int num);
    int d1,d2,d3,d4,d5;
         d1=num/10000;
         d2=(num/1000)%10;
         d4=(num/10)%10;
         d5=num%10;
         return (d5==d1 && d4==d2);
         endfunction

    initial
    begin
    if(pal(10201))
        $display("palindrome");
        else
            $display("not palindrome");
    end
endmodule */

module snippet;

    function int pal(input int num);
    int original,reverse,digit;

    original=num;
    reverse=0;

    repeat(5)
    begin
    digit=num%10;
    reverse=reverse*10+digit;
    num=num/10;
    end
    return (original==reverse);
    endfunction

    initial
    begin
    if(pal(10201))
        $display("plindrome");
        else
            $display("not palindrome");
    end
endmodule






