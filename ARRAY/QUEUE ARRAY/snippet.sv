module snippet();

byte q_array[$];

initial
begin

//index method
q_array[0]=4;
q_array[1]=3;
q_array[2]=2;
q_array[3]=1;

$display("the size of q_array is %p",q_array.size());
//in queue index method, index should be in order only from 0 to upto user defined index value

//direct method 
q_array='{3,4,5,6};
$display("the size of q_array is %p",q_array.size());
q_array.insert(1,2);
$display("the insert value is %p",q_array);
q_array.push_front(2);
$display("the push front value is %p",q_array);
q_array.push_back(7);
$display("the push back value is %p",q_array);
$display("th pop_front value is %p",q_array.pop_front());
$display("th pop_back value is %p",q_array.pop_back());

//for loop method
for(int i;i<q_array.size();i++)
    begin
    q_array[i]=$urandom_range(1,10);
    end
$display("the size of an array is %p",q_array.size());
$display("the elements of an array is %p",q_array);
q_array.insert(1,2);
$display("the insert value is %p",q_array);
q_array.push_front(2);
$display("the push front value is %p",q_array);
q_array.push_back(7);
$display("the push back value is %p",q_array);
$display("th pop_front value is %p",q_array.pop_front());
$display("th pop_back value is %p",q_array.pop_back());

//for each method
/*foreach(q_array[i])
    begin
    q_array[i]=$urandom_range(1,10);
    end
$display("the size of an array is %p",q_array.size());
$display("the elements of an array is %p",q_array);
$display("the insert value is %p",q_array);
q_array.push_front(2);
$display("the push front value is %p",q_array);
q_array.push_back(5);
$display("the push back value is %p",q_array);
$display("th pop_front value is %p",q_array.pop_front());
$display("th pop_back value is %p",q_array.pop_back());*/// for each was not working for queue bcz index we only need to give 

//operators
q_array='{10,20,30,40,50,60};
$display("the elemnts in an array is %p",q_array);
q_array={5,q_array};
$display("the first added element in an array is  %p",q_array);
q_array=q_array[1:$];
$display("the first element is deleted an array is  %p",q_array);
q_array=q_array[0:$-1];
$display("the last element is deleted an array is  %p",q_array);
q_array=q_array[1:$-1];
$display("the first element and last element was deleted an array is  %p",q_array);
q_array='{10,20,30,40,50,60};
$display("the elemnts in an array is %p",q_array);
q_array={q_array[0:2],35,q_array[3:$]};
$display("the inserted elemnts in an array is %p",q_array);
q_array={q_array[0:1],15,q_array[2:$]};
$display("the inserted elemnts before position in an array is %p",q_array);
end
endmodule
