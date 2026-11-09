module snippet();

int s_array[10];

task name(inout int s_array[10]);
     for(int i=0;i<$size(s_array);i++)
       s_array[i]=s_array[i]+1;

       $display("s_array=%p",s_array);
       
       

endtask

initial
begin
foreach(s_array[i])
s_array[i]=$urandom_range(1,10);
$display("before increment s_array=%p",s_array);
name(s_array);
$display("after increment s_array=%p",s_array);
end

endmodule
