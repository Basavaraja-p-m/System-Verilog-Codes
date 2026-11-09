module snippet();

//reg [7:0]d_array[];
byte d_array[];

initial
begin
d_array=new[8];

//index method
d_array[7]=10;
d_array[6]=20;
d_array[5]=30;
d_array[4]=40;
d_array[3]=50;
d_array[2]=60;
d_array[1]=70;
d_array[0]=80;

$display("the size of elements =%p",d_array);
$display("the size of elements =%p",d_array.size());
d_array.delete();
$display("the size of elements =%p",d_array);

//direct method
d_array=new[4];

d_array='{5,7};
$display("the size of elements =%p",d_array);
$display("the size of elements =%p",d_array.size());
d_array.delete();
$display("the size of elements =%p",d_array);

//using for loop
d_array=new[8];
for(int i;i<$size(d_array);i++)
    begin
    d_array[i]=$urandom_range(1,100);
    end
$display("the size of elements =%p",d_array);
$display("the size of elements =%p",d_array.size());
d_array.delete();
$display("the size of elements =%p",d_array);

//using foreach
d_array=new[8];
foreach(d_array[i])
    begin
    d_array[i]=$urandom_range(1,100);
    end
$display("the size of elements =%p",d_array);
$display("the size of elements =%p",d_array.size());
d_array.delete();
$display("the size of elements =%p",d_array);

end
endmodule
