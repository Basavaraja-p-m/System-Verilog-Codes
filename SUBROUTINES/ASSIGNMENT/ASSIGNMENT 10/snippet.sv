module snippet();

int q_array[$];

task remove(inout int q_array[$]);
     for(int i=0;i<q_array.size();i++)
         if(q_array[i]%2==0)
            q_array.delete(i);
endtask

initial
begin
for(int i=0;i<15;i++)
    q_array[i]=i;
$display("before remove=%p",q_array);
remove(q_array);
$display("after remove=%p",q_array);
end
endmodule
     
