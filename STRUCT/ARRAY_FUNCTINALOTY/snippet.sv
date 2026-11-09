module snippet();

typedef struct { 
     
                  int a_array[string];

                                        } subjects;

subjects sub1;

initial
begin
sub1.a_array={"kannada":100,"english":90,"maths":80,"science":90,"social":90,"hindi":100};

/*$display("the kannda marks is %p",sub1.array[0]);
$display("the english marks is %p",sub1.array[1]);
$display("the maths marks is %p",sub1.array[2]);
$display("the science marks is %p",sub1.array[3]);
$display("the social marks is %p",sub1.array[4]);
$display("the hindi marks is %p",sub1.array[5]);*/

$display("the marks of subjects is %p",sub1.a_array);

end
endmodule

