module snippet();

byte a_array[int];
//byte a_array[string];
//string a_array[string];
int s;

initial
begin

//index method
a_array[5]=10; 
a_array[2]=20; 
a_array[1]=30;
a_array[4]=40;
a_array[33]=50;

/*a_array["a"]=10;
a_array["b"]=20;
a_array["c"]=30;
a_array["d"]=40;
a_array["e"]=50;*/

$display("the size of the array is =%p",a_array.size());
$display("the elements of an array is =%p",a_array);
$display("the size of the array is =%p",a_array.size());
$display("the size of the array is =%p",a_array.num());
void'(a_array.first(s));
$display("the first of the array is =%p",s);
void'(a_array.last(s));
$display("the last of the array is =%p",s);
void'(a_array.next(s));
$display("the next of the array is =%d",s);
void'(a_array.prev(s));
$display("the prev of the array is =%d",s);
void'(a_array.prev(s));
$display("the prev of the array is =%d",s);
$display("the exist of the array is =%p",a_array.exists(17));
a_array.delete(1);
$display("the delete of the array is =%p",a_array);

//direct method
a_array='{0:10,1:20,3:30,2:40,5:50};

$display("the size of the array is =%p",a_array.size());
$display("the elements of an array is =%p",a_array);
$display("the size of the array is =%p",a_array.size());
$display("the size of the array is =%p",a_array.num());
void'(a_array.first(s));
$display("the first index of the array is =%p",s);
void'(a_array.last(s));
$display("the last index of the array is =%p",s);
void'(a_array.next(s));
$display("the next index of the array is =%d",s);
void'(a_array.prev(s));
$display("the prev index of the array is =%d",s);
$display("the exists of the array is =%p",a_array.exists(1));
a_array.delete(3);
$display("the delete of the array is =%p",a_array);

//using loop it cannot work bcz in associaive we have to declare the position

end
endmodule
