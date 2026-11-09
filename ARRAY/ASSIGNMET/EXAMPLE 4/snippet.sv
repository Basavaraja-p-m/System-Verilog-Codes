module snippet();

byte  d_array[];

initial
begin

d_array=new[10];

for(int i=1;i<10;i++)
    begin
   //d_array[i]=10*i;
    d_array[i]=(i % 2 == 0)?0:((i+1)/2)+1;
    end
    $display("the elements in an array %p",d_array);

    end
    endmodule

