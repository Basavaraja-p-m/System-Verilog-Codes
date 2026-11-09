module snippet();

byte d_array[];

initial
begin

d_array=new[10];

/*for(int i=0;i<10;i=i+2)
    begin
    d_array[i]=(i*2)+1;//s_array[i]=(i*2)+1;
    $display("the indexs is %d",i);
  //  $display("the elements in an array %p",d_array);
    end
$display("the elements in an array %p",d_array);
//$display("the indexs is %d and the elements is %d",i,d_array);*/

for(int i;i<10;i++)
    if(i % 2 == 0)
        begin
        d_array[i]=((i*2)/2)+1;//s_array[i]=(i*2)+1;
        $display("the index value is %d",i);
        end
    else
        begin
        d_array[i]=((i/2)+1)*2;
        $display("the index value is %d",i);
        end
 $display("the elements in an array %p",d_array);

end
endmodule

