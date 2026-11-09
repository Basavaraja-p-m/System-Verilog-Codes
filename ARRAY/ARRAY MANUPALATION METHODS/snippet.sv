module snippet();

//array element locator method

byte s_array[7:0];

byte d_array[];

byte a_array[int];

byte q_array[$];

initial
begin

//direct method
s_array='{1,2,3,4,5,6,7,8};

$display("the elements is %p",s_array);
$display("the find elements is %p",s_array.find()with(item % 2 == 0));
$display("the find_first element is %p",s_array.find_first()with(item % 2 == 0));
$display("the find_last element is %p",s_array.find_last()with(item > 3));
$display("the min value element is %p",s_array.min());
$display("the max value element is %p",s_array.max());
$display("the unique value element is %p",s_array.unique());

//array index locator method

d_array=new[4];
//direct method
d_array='{2,4,6,8};

$display("the no of element in d_array is %p",d_array.size());
$display("the find elements is %p",d_array.find_index()with(item % 2 == 0));
$display("the find_first element is %p",d_array.find_first_index()with(item % 2 == 0));
$display("the find_last element is %p",d_array.find_last_index()with(item > 3));
$display("the unique value element is %p",d_array.unique());

//array index iterater method
a_array='{0:10,1:20,2:30,4:40};

$display("the no of element in a_array is %p",a_array.size());
$display("the equal value in index and element is %p",a_array.find()with(item==item.index));
$display("the element value is greater than index %p",a_array.find_index()with(item>item.index));
$display("the equal value in index and element is %p",a_array.find()with(item<item.index));

//array ordering method

q_array='{50,20,40,30};

$display("the no of element in a_array is %p",q_array.size());
q_array.sort();
$display("the sorting of elements in ascending order %p",q_array);
q_array.rsort();
$display("the sorting of elements in decending order %p",q_array);
q_array.reverse();
$display("the reverse of element in a_array is %p",q_array);
q_array.shuffle();
$display("the shuffle of elements in a_array is %p",q_array);

//array reduction methods

q_array='{1,2,3,4};

$display("the and bitwise value is %p",q_array.and());
$display("the or bitwise value is %p",q_array.or());
$display("the xor bitwise value is %p",q_array.xor());
$display("the sum value is %p",q_array.sum());
$display("the prodoct value is %p",q_array.product());
end
endmodule
