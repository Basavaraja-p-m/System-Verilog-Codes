module snippet();

byte s_array[10];

initial
begin
for(int i=0;i<10;i++)
    begin
    s_array[i]=(i*2)+1;
    end
    $display("the elemnts in an array is %p",s_array);
    

end
endmodule
