module snippet();

byte d_array[];

initial
begin
d_array=new[10];

foreach (d_array[i])
     begin
     d_array[i]=(i+1)*2;
     end

$display("the elements in an array is %p",d_array);

end
endmodule
    
