module snippet();

int y;

int d_array[];

function int avg(input int d_array[]);
 /*   avg=d_array.sum()/d_array.size(); //array reductinol method
    $display("d_array=%p avg=%d",d_array,avg);   */
 int sum;
 sum=0;
    foreach(d_array[i])
       sum += d_array[i];
       avg=sum/d_array.size;
    $display("d_array=%p avg=%d",d_array,avg);   

endfunction

initial
begin
d_array=new[5];
foreach(d_array[i])
   d_array[i]=$urandom_range(5,15);
y=avg(d_array);
end

endmodule
