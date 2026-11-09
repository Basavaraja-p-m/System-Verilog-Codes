module snippet();

int s_array[10];

initial
begin
for(int i=0;i<10;i++)
    begin
    if(i==5)
      // break;
      //  if(i==6)
         continue;
    s_array[i]=i*2;
    $display("values is= %d  array=%p",i,s_array[i]);
    end

 //   $display("values is %p",s_array);
end
endmodule
